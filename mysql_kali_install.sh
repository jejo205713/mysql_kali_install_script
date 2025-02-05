echo "Installation script by jejo to install MYSQL-SERVER on kali linux !"

echo "🔍 Updating package lists..."
sudo apt update -y

echo "📦 Installing snapd..."
sudo apt install snapd -y

echo "✅ Enabling and starting snapd and apparmor..."
sudo systemctl enable --now snapd apparmor

echo "⏳ Installing MySQL Server (Snap package)..."
snap install --channel=8.0 mysql-server

echo "🚀 Starting MySQL service..."
sudo systemctl start mysql

echo "✅ MySQL installation and setup completed successfully!"

