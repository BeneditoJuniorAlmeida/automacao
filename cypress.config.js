const { defineConfig } = require("cypress")
const fs = require('fs')

module.exports = defineConfig({
  //videoCompression: 15,
  //projectId: 'h1ouxa',
  e2e: {
    setupNodeEvents(on, config) {
     /* //gravar video caso ocorra erro na execução de algum teste
      on('after:spec', (spec, results) => {
        if (results && results.video) {
          // Do we have failures for any retry attempts?
          const failures = results.tests.some((test) =>
            test.attempts.some((attempt) => attempt.state === 'failed')
          )
          if (!failures) {
            // delete the video if the spec passed and no tests retried
            fs.unlinkSync(results.video)
          }
        }
      })*/
    },
  },
})
