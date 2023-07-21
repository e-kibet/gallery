module.exports = {
    apps: [{
        name: 'ms-gallery-service',
        script: './server.js',
        instances: 1,
        exec_mode: 'fork',
        watch: false,
        autorestart: false,
        env: {
            "NODE_ENV": "production",
        },
    }]
};