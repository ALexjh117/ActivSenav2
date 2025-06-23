import React from 'react'
import Feedback from '../Feedback/Feedbacks'
import Comentarios from '../Aprobar/Comentarios'
import TableFeedback from '../TableComentarios/TableFeedback'
import CarruselFeedback from '../CarouselFeedback/CarruselFeedback'


export default function Combinar() {
  return (
    <>
    <CarruselFeedback />
    <TableFeedback />

    </>
  )
}
