User.create!(email: 'example@admin.com',
             password: 'password',
             password_confirmation: 'password',
             name: 'Admin',
             admin: true) if User.where(email: 'example@admin.com').empty?

adm = Course.find_or_create_by(name: 'Administração')
arq = Course.find_or_create_by(name: 'Arquitetura e Urbanismo')
bio = Course.find_or_create_by(name: 'Biomediciona')
cer = Course.find_or_create_by(name: 'Cervejaria')
cop = Course.find_or_create_by(name: 'Ciência da Computação')
bi1 = Course.find_or_create_by(name: 'Ciências Biológicas (Bacharelado')
bi2 = Course.find_or_create_by(name: 'Ciências Biológicas (Licenciatura)')
con = Course.find_or_create_by(name: 'Ciências Contábeis')
dir = Course.find_or_create_by(name: 'Direito')
enf = Course.find_or_create_by(name: 'Enfermagem')
civ = Course.find_or_create_by(name: 'Eng. Civil')
pro = Course.find_or_create_by(name: 'Eng. Produção')
far = Course.find_or_create_by(name: 'Farmárcia')
fis = Course.find_or_create_by(name: 'Fisioterapia')
jdi = Course.find_or_create_by(name: 'Jogos Digitais')
jor = Course.find_or_create_by(name: 'Jornalismo')
med = Course.find_or_create_by(name: 'Medicina')
vet = Course.find_or_create_by(name: 'Medicina Veterinária')
nut = Course.find_or_create_by(name: 'Nutrição')
odo = Course.find_or_create_by(name: 'Odontologia')
psi = Course.find_or_create_by(name: 'Psicologia')
pub = Course.find_or_create_by(name: 'Publicidade e Propaganda')
