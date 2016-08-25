# vm_dcredmine
VM com CentOS7 com provisionamento do servidor de gerenciamento de projetos Redmine

    Projeto Puppet Standalone (Puppet Apply) com o módulo do Redmine para provisionamento do servidor, instalação e configuração do Redmine. Deve ser considerado os seguintes requisitos:
      	> Imagem do CentOS puppetlabs/centos-7.0-64-puppet (Versão Testada)
      	> Vagrant na versão 1.7.4 (Versão Testada)
      	> Virtual Box na versão 5.0.10 r104061 (Versão Testada)
    
    Instruções:
        > Realize o download e faça a instalação do Virtual Box (pode ser baixado em https://www.virtualbox.org/wiki/Downloads)
        > Realize o download e faça a instalação do Vagrant (pode ser baixado em https://www.vagrantup.com/downloads.html)
        > Verifique e configure, se necessário, as variáveis de ambiente no sistema operacional, tanto para o Vagrant como para o Virtual Box
        > Faça o clone dos fontes do projeto para um diretório de sua preferência com o comando <code>git clone https://github.com/eduardodicarte/vm_puppet_redmine/</code>
        > Acesse a pasta onde está localizado o arquivo Vagrantfile via terminal de comando (diretório clonado via github)
        > Execute o comando <code>vagrant up</code> e aguarde o término do processo
        > Acesse o servidor pela URL http://192.168.210.201/
        > Faça login digitando adm tanto para usuário como para senha
        
    Possíveis Problemas:
        > O tempo necessário para a finalização do processo dependerá da estabilidade e velocidade da internet
        > O processo poderá falhar caso a internet esteja com sinal instável, sendo necessário o restart do processo
        > Para que o servidor seja provisionado sem maiores problemas, o requisitos descritos acima devem ser observados
    
    Solução de Problemas:
        > Futuramente o problema com a instabilidade da internet será corrigido, aguarde.
        > Caso o processo falhe, aguarde a finalização do processo, então digite o comando <code>vagrant destroy </code>. Após a solicitação de confirmação pressione a tecla <y> e confirme pressionando a tecla <Enter>
        > Para desligar o servidor, acesse via terminal o diretório onde está o arquivo Vagrantfile e, digite o comando <code>vagrant halt</code> e confirme pressionando a tecla <Enter>
        > Para iniciar o servidor novamente, acesse via terminal o diretório onde está o arquivo Vagranfile e, digite o comando <code>vagrant up</code> e confirme pressionando a tecla <Enter>
        
    Observações:
        > As versões que foram referidas estão testadas
        > Todos os comandos deverão ser digitados dentro do diretório onde está localizado o arquivo Vagrantfile
        > Para verificar o status do servidor digite o comando vagrant status
        > O Vagrant mantém toda a configuração e o status dos servidores no arquivo .vagrant que é gerado na primeira execução do comando vagrant up, caso esse arquivo seja excluído, os servidores também serão.
        > Todas as informações geradas pelo Vagrant estarão disponível no VirtualBox, porém deve ter atenção a qualquer operação no VirtualBox, caso os arquivos sejam excluídos toda a configuração gerada pelo vagrant também será, sendo necessário a repetição de todo o processo e tudo que não estiver salvo pelo módulo será descartado (analogamente é um restart de fábrica).
        > O comando vagrantup faz tanto a configuração das VMs como apenas liga o servidor, tudo depende do status no arquivo .vagrant
        > Será feito o download da imagem do sistema operacional uma única vez, quando o Vagrant perceber que a imagem já existe no Sistema Operacional, ele fará apenas a importação. Normalmente quando o sistema operacional for Windows, a imagem ficará armazenada em C:\Users\<Usuario>\.vagrant.d\boxes (O vagrant irá descompactar e configurar e alterar o formato da imagem, caso seja necessário o download da imagem, faça o backup de toda a pasta no diretório C:\Users\<Usuario>\.vagrant.d\boxes)
        
  Qualquer dúvidas adicionais entre em contato:     
         
    emails:    
        eduardo_dicarte@yahoo.com.br   
        eduardo.dicarte@gmail.com                
    skype:     
        duardod@hotmail.com              
    redes sociais    
        https://www.facebook.com/eduardo.dicarte    
        https://www.linkedin.com/in/eduardo-dicarte-ocpjp-12415023   
        
