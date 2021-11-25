#---
# Excerpted from "Agile Web Development with Rails 5",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails5 for more book information.
#---
# encoding: utf-8
Persona.delete_all
Persona.create!(
    nombre: 'Juan',
    apellido: 'Juanes',
    fecha_nac: '2016-12-12',
    dni:12123123
)
# . . .
Persona.create!(
    nombre: 'Diego',
    apellido: 'Diegues',
    fecha_nac: '2016-12-12',
    dni:12123123
)
# . . .
# Product.create!(title: 'Seven Mobile Apps in Seven Weeks',
#   description:
#     %{<p>
#       <em>Native Apps, Multiple Platforms</em>
#       Answer the question “Can we build this for ALL the devices?” with a
#       resounding YES. This book will help you get there with a real-world
#       introduction to seven platforms, whether you’re new to mobile or an
#       experienced developer needing to expand your options. Plus, you’ll find
#       out which cross-platform solution makes the most sense for your needs.
#       </p>},
#   image_url: '7apps.jpg',
#   price: 26.00)
# . . .

