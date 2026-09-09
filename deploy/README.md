# Hostinger VPS deploy

- VPS ID: `1943507`
- IP: `72.61.179.158`
- MCP project: `kivam-kahve`
- İlk yayın adresi: `http://72.61.179.158`
- Repo: `https://github.com/muzafferkadir/code-to-vps`
- Aktif config snapshot: kökteki `docker-compose.yaml` ve `Dockerfile`
- Bu klasördeki `docker-compose.yaml`, SSH ile dosya aktarımına dayanan alternatif config'dir.

## Akış

1. `npm run build` ile `dist/` üret.
2. Kaynak kodu GitHub `main` branch'ine push et.
3. VPS üzerinde port 80'in kullanılabilir olduğunu kontrol et.
4. Hostinger MCP `VPS_createNewProjectV1` ile kökteki `docker-compose.yaml` içeriğini deploy et. Docker, public GitHub repo'sundan build eder; SSH dosya aktarımı gerekmez.
5. MCP container durumu ve loglarını kontrol et. Public HTTP response ve asset'leri doğrula.

Domain ve HTTPS henüz yapılandırılmadı.
