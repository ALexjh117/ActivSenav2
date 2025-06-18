import React, { useState } from 'react';
import ModalDetalles from './ModalDetalles';
import certificadoImg from '../img/certificado.webp';

const Aprendiz = ({ aprendiz }) => {
  const [modalOpen, setModalOpen] = useState(false);

  const handleVerDetalles = () => {
    setModalOpen(true);
  };

  const handleCerrarModal = () => {
    setModalOpen(false);
  };

  const handleGenerar = () => {
    
  };

  return (
    <div className="aprendiz-card">
      <div className="aprendiz-info">
        <img
          className="certificado-img"
          src={certificadoImg}
          alt="Certificado"
        />

        <div className="info-text">
          <h3>{aprendiz.nombre}</h3>
          <p><strong>Hora de lúdicas:</strong> {aprendiz.horaLudicas}</p>
          <p><strong>Observaciones:</strong> {aprendiz.observaciones}</p>
        </div>
      </div>

      <div className="aprendiz-actions">
        <button onClick={handleVerDetalles}>Ver Detalles</button>
        <button onClick={handleGenerar}>Generar</button>
      </div>

      {modalOpen && (
        <ModalDetalles
          aprendiz={aprendiz}
          onClose={handleCerrarModal}
        />
      )}
    </div>
  );
};

export default Aprendiz;
