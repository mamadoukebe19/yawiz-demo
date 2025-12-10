#!/bin/bash

echo "🚀 Starting Yawiz deployment..."

# Set correct permissions
chmod 600 serverweb.pem

# Test connectivity
echo "📡 Testing connectivity to servers..."
ansible all -i hosts -m ping

if [ $? -eq 0 ]; then
    echo "✅ All servers are reachable"
    
    # Deploy application
    echo "🔧 Deploying application..."
    ansible-playbook -i hosts deploy_with_ansible.yml
    
    if [ $? -eq 0 ]; then
        echo "🎉 Deployment completed successfully!"
        echo ""
        echo "🌐 Your application is now available at:"
        echo "   • http://54.88.151.51"
        echo "   • http://13.220.216.88"
        echo ""
        echo "🔍 Check container status:"
        ansible all -i hosts -m shell -a "docker ps"
    else
        echo "❌ Deployment failed!"
    fi
else
    echo "❌ Cannot reach servers. Check your SSH key and network connectivity."
fi