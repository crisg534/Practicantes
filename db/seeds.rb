# -*- coding: utf-8 -*-
if City.count == 0
  p "cities seeded"
  City.create(name: "Armenia")
  City.create(name: "Barranquilla")
  City.create(name: "Bello")
  City.create(name: "Bogotá")
  City.create(name: "Bucaramanga")
  City.create(name: "Buenaventura")
  City.create(name: "Cali")
  City.create(name: "Cartagena")
  City.create(name: "Envigado")
  City.create(name: "Floridablanca")
  City.create(name: "Ibagué")
  City.create(name: "Itagüí")
  City.create(name: "Manizales")
  City.create(name: "Medellín")
  City.create(name: "Montería")
  City.create(name: "Neiva")
  City.create(name: "Palmira")
  City.create(name: "Pasto")
  City.create(name: "Pereira")
  City.create(name: "Popayán")
  City.create(name: "Riohacha")
  City.create(name: "San José de Cúcuta")
  City.create(name: "Santa Marta")
  City.create(name: "Sincelejo")
  City.create(name: "Soacha")
  City.create(name: "Soledad")
  City.create(name: "Tuluá")
  City.create(name: "Valledupar")
  City.create(name: "Villavicencio")
end

if Area.count == 0
  p "area seeded"
  a1 = Area.create(name: "INGENIERÍA, ARQUITECTURA, URBANISMO Y AFINES")
  a2 = Area.create(name: "BELLAS ARTES")
end

if Career.count == 0
  p "carrers seeded"
  c1 = Career.create(name: "Ingeniería de Sistemas, Telemática y Afines", area_id: a1.id)
  c2 = Career.create(name: "Diseño", area_id: a2)
end

if Profile.count == 0
  p "profiles seeded"
  Profile.create(name: "Administración de Sistemas de Información", career_id: c1.id)
  Profile.create(name: "Desarrollador Web", career_id: c1.id)
  Profile.create(name: "Análisis, diseño e implementación de sistemas de información", career_id: c1.id)
  Profile.create(name: "Administración de bases de datos", career_id: c1.id)
  Profile.create(name: "Diseño, construcción y mantenimiento de sitios Web", career_id: c1.id)
  Profile.create(name: "Modelamiento de sistemas organizacionales", career_id: c1.id)
  Profile.create(name: "Área de comunicaciones", career_id: c1.id)
  Profile.create(name: "Seguridad computacional", career_id: c1.id)
  Profile.create(name: "Administración de redes", career_id: c1.id)
  Profile.create(name: "Diseño e implementación de soluciones telemáticas", career_id: c1.id)
  Profile.create(name: "Área de gestión tecnológica", career_id: c1.id)
  Profile.create(name: "Evaluación y aplicación de tecnologías de hardware y software en las organizaciones", career_id: c1.id)
  Profile.create(name: "Creación de empresas de manejo computarizado de información y de las actividades que de él se deriven", career_id: c1.id)
  Profile.create(name: "Administración de sistemas de información", career_id: c1.id)
  Profile.create(name: "Área de investigación aplicada a proyectos informáticos", career_id: c1.id)

  Profile.create(name: "Gráfico", career_id: c2.id)
  Profile.create(name:"Crear proyectos de comunicación visual, utilizando la imagen como el recurso de más alto poder comunicativo y estético.", career_id: c2.id)
  Profile.create(name:"Participar en procesos de investigación, conceptualización y desarrollo de proyectos creativos que aborden problemáticas de la comunicación gráfica.", career_id: c2.id)
  Profile.create(name:"Crear proyectos audiovisuales, electrónicos e interactivos, por medio de aplicaciones informáticas, aplicables a soluciones comunicacionales tales como video, multimedia, web, cine y televisión.", career_id: c2.id)
  Profile.create(name:"Diseñar y diagramar información, entre ellos gráficas, textos, imágenes, ilustraciones en diferentes medios editoriales como libros, revistas, periódicos y demás publicaciones en medios impresos o electrónicos.", career_id: c2.id)
  Profile.create(name:"Diseñar proyectos de identidad visual, que impliquen la creación de la imagen de productos y servicios tangibles o intangibles, con distintivos significables en sus procesos de comunicación.", career_id: c2.id)
  Profile.create(name:"Diseñar, planear y coordinar campañas y piezas publicitarias en diferentes medios, muestras o exhibiciones y espacios comerciales.", career_id: c2.id)
  Profile.create(name:"Participar en la formulación y desarrollo de proyectos de investigación relacionados con la historia y teoría de la imagen y la comunicación o el desarrollo de proyectos experimentales de creación gráfica y visual.", career_id: c2.id)
  Profile.create(name:"Crear sistemas de orientación a través de la construcción de piezas informativas e infográficas que logren generar hábitos en el manejo, desplazamiento  y uso de los diferentes espacios.", career_id: c2.id)
  Profile.create(name:"Mantener una actitud de compromiso y responsabilidad social en el ejercicio de la profesión y dentro de equipos de trabajo multidisciplinario, para contribuir al desarrollo de la cultura visual de la sociedad.", career_id: c2.id)
end

if Enterprise.count == 0
  p "enterprises seeded"
  Enterprise.create(name: "koombea", nit: "1234567689", address: "calle 1", phone: "5555555", 
    email: "koombea@koombea.com", url: "koombea.com", contact_name:  "jhon do" )
  Enterprise.create(name: "programers.inc", nit: "987654332", address: "calle 13", phone: "4444444", 
    email: "programer@programer.com", url: "programer.inc.com", contact_name:  "jhonny dowie" )
end

if Offer.count == 0
  p "offer seeded"
  Offer.create(enterprise_id: Enterprise.last.id, name: "porgramador requerido", 
    description: "programador requerido para turbo pascal", city_id: City.last.id, skills: "turbo pascal",
     wanted_skills: "C")
  Offer.create(enterprise_id: Enterprise.first.id, name: "porgramador requerido", 
    description: "programador requerido para ruby on rails", city_id: City.first.id, 
    skills: "ruby, rails, ruby on rails, ror", wanted_skills: "javascript, jquery")
end