# frozen_string_literal: true

puts 'Seeding...'

User.create!(email: 'example@admin.com',
             password: 'password',
             password_confirmation: 'password',
             name: 'Admin',
             admin: true)

User.create!(email: 'example1@user.com',
             password: 'password',
             password_confirmation: 'password',
             name: 'User 1',
             admin: true)

User.create!(email: 'example2@user.com',
             password: 'password',
             password_confirmation: 'password',
             name: 'User 2',
             admin: true)

puts 'Courses: Start'

adm = Course.create(name: 'Administração')
arq = Course.create(name: 'Arquitetura e Urbanismo')
bio = Course.create(name: 'Biomedicina')
cer = Course.create(name: 'Cervejaria')
cop = Course.create(name: 'Ciência da Computação')
bi1 = Course.create(name: 'Ciências Biológicas (Bacharelado')
bi2 = Course.create(name: 'Ciências Biológicas (Licenciatura)')
con = Course.create(name: 'Ciências Contábeis')
dir = Course.create(name: 'Direito')
enf = Course.create(name: 'Enfermagem')
civ = Course.create(name: 'Eng. Civil')
pro = Course.create(name: 'Eng. Produção')
far = Course.create(name: 'Farmárcia')
fis = Course.create(name: 'Fisioterapia')
jdi = Course.create(name: 'Jogos Digitais')
jor = Course.create(name: 'Jornalismo')
med = Course.create(name: 'Medicina')
vet = Course.create(name: 'Medicina Veterinária')
nut = Course.create(name: 'Nutrição')
odo = Course.create(name: 'Odontologia')
psi = Course.create(name: 'Psicologia')
pub = Course.create(name: 'Publicidade e Propaganda')

courses = [adm, arq, bio, cer, cop, bi1, bi2, con, dir, enf, civ,
           pro, far, fis, jdi, jor, med, vet, nut, odo, psi, pub]

puts 'Courses: Finish'

puts 'Subjects: Start'

subjects = []

subjects << Subject.create(name: 'Laboratório de Fundamentos em TIC', course_ids: [cop.id])
subjects << Subject.create(name: 'Robótica Computacional', course_ids: [cop.id])
subjects << Subject.create(name: 'Práticas Integradas em Ciências e Tecnologias 1', course_ids: [cop.id])
subjects << Subject.create(name: 'Comunicação e Expressão', course_ids: [cop.id])
subjects << Subject.create(name: 'Resolução de Problemas Computacionais', course_ids: [cop.id])
subjects << Subject.create(name: 'Arquitetura de Computadores e Sistemas', course_ids: [cop.id])
subjects << Subject.create(name: 'Práticas Integradas em Ciências e Tecnologias 2', course_ids: [cop.id])
subjects << Subject.create(name: 'Inglês Técnico', course_ids: [cop.id])
subjects << Subject.create(name: 'Raciocínio Lógico e Matemático', course_ids: [cop.id])
subjects << Subject.create(name: 'Princípios de Construção de Algoritmos', course_ids: [cop.id])
subjects << Subject.create(name: 'Algoritmos em Linguagens Modernas e seus Paradigmas', course_ids: [cop.id])
subjects << Subject.create(name: 'Práticas Integradas em Ciências e Tecnologias 3', course_ids: [cop.id])
subjects << Subject.create(name: 'Cidadania, Diversidade e Sustentabilidade', course_ids: [cop.id, adm.id])
subjects << Subject.create(name: 'Geometria Analítica e Algebra Linear', course_ids: [cop.id])
subjects << Subject.create(name: 'Introdução a Física Teórica e Experimental', course_ids: [cop.id])
subjects << Subject.create(name: 'Algoritmos de Alta Performace', course_ids: [cop.id])
subjects << Subject.create(name: 'Programação Orientada a Objetos e UML', course_ids: [cop.id])
subjects << Subject.create(name: 'Sistemas Operacionais', course_ids: [cop.id])
subjects << Subject.create(name: 'Cálculo 1', course_ids: [cop.id])
subjects << Subject.create(name: 'Práticas Integradas em Ciências e Tecnologias 4', course_ids: [cop.id])
subjects << Subject.create(name: 'Engenharia de Software', course_ids: [cop.id])
subjects << Subject.create(name: 'Cálculo 2', course_ids: [cop.id])
subjects << Subject.create(name: 'Física Teórica e Experimental 1', course_ids: [cop.id])
subjects << Subject.create(name: 'Probabilidade e Estatística', course_ids: [cop.id])
subjects << Subject.create(name: 'Empreendedorismo e Inovação', course_ids: [cop.id])
subjects << Subject.create(name: 'Práticas Integradas em Ciências e Tecnologias 5', course_ids: [cop.id])
subjects << Subject.create(name: 'Desenvolvimento Web e IHC com Práticas de Engenharia de Software', course_ids: [cop.id])
subjects << Subject.create(name: 'Redes e Sistemas Distribuídos', course_ids: [cop.id])
subjects << Subject.create(name: 'Banco de Dados', course_ids: [cop.id])
subjects << Subject.create(name: 'Metodologia Científica', course_ids: [cop.id])
subjects << Subject.create(name: 'Práticas Integradas em Ciências e Tecnologias 6', course_ids: [cop.id])
subjects << Subject.create(name: 'Desenvolvimento de Aplicações Móveis', course_ids: [cop.id])
subjects << Subject.create(name: 'Compiladores', course_ids: [cop.id])
subjects << Subject.create(name: 'Computação Gráfica e Processamento de Imagens', course_ids: [cop.id])
subjects << Subject.create(name: 'Cenários, Cultura e Globalização', course_ids: [cop.id, adm.id])
subjects << Subject.create(name: 'Práticas Integradas em Ciências e Tecnologias 7', course_ids: [cop.id])
subjects << Subject.create(name: 'Inteligência Artifical e Computacional', course_ids: [cop.id])
subjects << Subject.create(name: 'Computação Ciêntifica', course_ids: [cop.id])
subjects << Subject.create(name: 'Práticas Integradas em Ciências e Tecnologias 8', course_ids: [cop.id])

subjects << Subject.create(name: 'Comportamento Organizacional', course_ids: [adm.id])
subjects << Subject.create(name: 'Contabilidade Geral', course_ids: [adm.id])
subjects << Subject.create(name: 'Teoria Econômica', course_ids: [adm.id])
subjects << Subject.create(name: 'Filosofia, Ética Geral E Profissional', course_ids: [adm.id])
subjects << Subject.create(name: 'Fundamentos das Ciências Humanas e Sociais', course_ids: [adm.id])
subjects << Subject.create(name: 'Fundamentos da Administração', course_ids: [adm.id])
subjects << Subject.create(name: 'Contabilidade de Custos', course_ids: [adm.id])
subjects << Subject.create(name: 'Matemática Aplicada', course_ids: [adm.id])
subjects << Subject.create(name: 'Fundamentos de Direito', course_ids: [adm.id])
subjects << Subject.create(name: 'Gestão de Processos Organizacionais', course_ids: [adm.id])
subjects << Subject.create(name: 'Contabilidade Gerencial', course_ids: [adm.id])
subjects << Subject.create(name: 'Matemática Financeira', course_ids: [adm.id])
subjects << Subject.create(name: 'Estátistica Aplicada', course_ids: [adm.id])
subjects << Subject.create(name: 'Teoria Geral da Administração', course_ids: [adm.id])
subjects << Subject.create(name: 'Administração Financeira, Orçamentária', course_ids: [adm.id])
subjects << Subject.create(name: 'Controladoria e Orçamento Empresarial', course_ids: [adm.id])
subjects << Subject.create(name: 'Marketing', course_ids: [adm.id])
subjects << Subject.create(name: 'Administração de Sistemas de de Informação', course_ids: [adm.id])
subjects << Subject.create(name: 'Administração de Recursos Humanos', course_ids: [adm.id])
subjects << Subject.create(name: 'Empreendedorismo e Inovação', course_ids: [adm.id])
subjects << Subject.create(name: 'Administração da Produção', course_ids: [adm.id])
subjects << Subject.create(name: 'Administração Pública', course_ids: [adm.id])
subjects << Subject.create(name: 'Análise de Investimento', course_ids: [adm.id])
subjects << Subject.create(name: 'Metodologia Científica', course_ids: [adm.id])
subjects << Subject.create(name: 'Administração Patrimonial de Materiais', course_ids: [adm.id])
subjects << Subject.create(name: 'Técnicas de Negociação e PRocesso Decisório', course_ids: [adm.id])
subjects << Subject.create(name: 'Administração Estratégica', course_ids: [adm.id])
subjects << Subject.create(name: 'Administração de Projetos', course_ids: [adm.id])
subjects << Subject.create(name: 'Tópicos Avançados em Administração', course_ids: [adm.id])
subjects << Subject.create(name: 'Diagnose e Consultoria Empresarial', course_ids: [adm.id])

puts 'Subjects: Finish'

puts "This seeding create #{courses.size} courses and #{subjects.size} subjects."
