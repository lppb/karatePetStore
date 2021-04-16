function fn() {
  var env = karate.env; // get java system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'test';
  }

  // base config JSON
  var config = {
    env: env,
	baseUrl: 'https://petstore.swagger.io/v2/',
    petPath: 'pet/',
    userPath: '',
    storePath: ''
  }
  if (env == 'dev') {
    // override only what is needed based on different environments
    config.userPath = 'user/'
    config.storePath = 'store/'
  } else if (env == 'prod') {
	  config.baseUrl = 'https://petstore.swagger.io/v2/'
      config.userPath = 'user/'
      config.storePath = 'store/'
  }
  return config;
}