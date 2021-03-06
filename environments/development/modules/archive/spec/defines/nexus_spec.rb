require 'spec_helper'

describe 'archive::nexus' do
  let(:facts) { { :osfamily => 'RedHat', :puppetversion => '3.7.3' } }

  context 'nexus archive with defaults' do
    let(:title) { '/tmp/hawtio.war' }

    let(:params) { {
      url: 'https://oss.sonatype.org',
      gav: 'io.hawt:hawtio-web:1.4.36',
      repository: 'releases',
      packaging: 'war',
    } }

    it do
      should contain_archive('/tmp/hawtio.war').with(
        :source => 'https://oss.sonatype.org/service/local/artifact/maven/content?g=io.hawt&a=hawtio-web&v=1.4.36&r=releases&p=war',
        :checksum_url => 'https://oss.sonatype.org/service/local/artifact/maven/content?g=io.hawt&a=hawtio-web&v=1.4.36&r=releases&p=war.md5'
      )
    end

    it do
      should contain_file('/tmp/hawtio.war').that_requires('Archive[/tmp/hawtio.war]').with(
        :owner => '0',
        :group => '0',
      )
    end
  end

  context 'nexus archive with overwritten parameters' do
    let(:title) { '/tmp/artifact.war' }

    let(:params) { {
      url: 'https://oss.sonatype.org',
      gav: 'io.hawt:hawtio-web:1.4.36',
      repository: 'releases',
      owner: 'tom',
      group: 'worker',
      user: 'tom',
      extract: true,
      extract_path: '/opt',
      creates: '/opt/artifact/WEB-INF',
      cleanup: true
    } }

    it do
      should contain_archive('/tmp/artifact.war').with(
        'user' => 'tom',
        'group' => 'worker',
        'extract' => true,
        'extract_path' => '/opt',
        'creates' => '/opt/artifact/WEB-INF',
        'cleanup' => true
      )
    end

    it do
      should contain_file('/tmp/artifact.war').that_requires('Archive[/tmp/artifact.war]').with(
        'owner' => 'tom',
        'group' => 'worker'
      )
    end
  end

  context 'nexus archive with checksum_verify => false' do
    let :title do
      '/tmp/artifact.war'
    end

    let :params do
      {
        url: 'https://oss.sonatype.org',
        gav: 'io.hawt:hawtio-web:1.4.36',
        repository: 'releases',
        owner: 'tom',
        group: 'worker',
        user: 'tom',
        extract: true,
        extract_path: '/opt',
        creates: '/opt/artifact/WEB-INF',
        cleanup: true,
        checksum_verify: false
      }
    end

    it do
      should contain_archive('/tmp/artifact.war').with(
        'user' => 'tom',
        'group' => 'worker',
        'extract' => true,
        'extract_path' => '/opt',
        'creates' => '/opt/artifact/WEB-INF',
        'cleanup' => true,
        'checksum_verify' => false
      )
    end

    it do
      should contain_file('/tmp/artifact.war').that_requires('Archive[/tmp/artifact.war]').with(
        'owner' => 'tom',
        'group' => 'worker'
      )
    end
  end
end
