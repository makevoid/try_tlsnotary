## Try TLSNotary

Try tlsnotary


### Setup

    git clone git@github.com:tlsnotary/pagesigner-browserless.git
    
    
### Configure

    vim pagesigner-browserless/src/shared/tlsnotary.ini
    

Configure `server_name`, If you don't have a server, and there are no public servers available, you need to spawn and configure one: https://github.com/tlsnotary/pagesigner-oracles/blob/master/INSTALL.oracles

### Run

    ruby try_tlsnotary.rb
