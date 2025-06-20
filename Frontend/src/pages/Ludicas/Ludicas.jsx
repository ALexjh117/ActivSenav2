import React, { useState } from 'react';
import './style/Ludicas.css';
import baloncestoimg from "./img/baloncesto.jpg";
import futbolimg from "./img/futbol.jpg";
import tenisimg from "./img/tenis.jpg";
import voleibolimg from "./img/voleibol.jpg";
import ajedrezimg from "./img/ajedrez.jpg";
import atletismoimg from "./img/atletismo.jpg";
import Ballpit from "../../Backgrounds/Ballpit/Ballpit";


const App = () => {
  const [selectedActivity, setSelectedActivity] = useState(null);
  const [showModal, setShowModal] = useState(false);

  const openModal = (activity) => {
    setSelectedActivity(activity);
    setShowModal(true);
  };

  const closeModal = () => {
    setSelectedActivity(null);
    setShowModal(false);
  };

  const activities = [
    {
      id: 1,
      title: "Fútbol",
      image: futbolimg,
      location: "Cancha fútbol CTPI",
      schedule: ["10:00 - 11:00", "11:00 - 12:00", "14:00 - 15:00"],
      description: "Actividad en equipo donde se mejora la coordinación y resistencia física."
    },
    {
      id: 2,
      title: "Baloncesto",
      image: baloncestoimg,
      location: "Polideportivo CTPI",
      schedule: ["10:00 - 11:00", "11:00 - 12:00", "15:00 - 16:00"],
      description: "Deporte que promueve el trabajo en equipo, agilidad y precisión."
    },
    {
      id: 3,
      title: "Tenis",
      image: tenisimg,
      location: "Cancha de Tenis CTPI",
      schedule: ["10:00 - 11:00", "11:00 - 12:00", "16:00 - 17:00"],
      description: "Deporte de raqueta que desarrolla la concentración y condición física."
    },
    {
      id: 4,
      title: "Voleibol",
      image: voleibolimg,
      location: "Cancha múltiple CTPI",
      schedule: ["09:00 - 10:00", "13:00 - 14:00"],
      description: "Fomenta el espíritu de equipo y mejora la coordinación motriz."
    },
    {
      id: 5,
      title: "Ajedrez",
      image: ajedrezimg,
      location: "Biblioteca CTPI",
      schedule: ["08:00 - 09:00", "12:00 - 13:00"],
      description: "Desarrolla el pensamiento estratégico y la toma de decisiones."
    },
    {
      id: 6,
      title: "Atletismo",
      image: atletismoimg,
      location: "Pista atlética CTPI",
      schedule: ["07:00 - 08:00", "17:00 - 18:00"],
      description: "Actividades físicas que mejoran la velocidad, fuerza y resistencia."
    }
  ];

  return (
    <div className="ludicas-container">
      <div style={{ position: 'relative', width: '100%', height: '300px' }}>
        <Ballpit />
        <div style={{
          position: 'absolute',
          top: '50%',
          left: '50%',
          transform: 'translate(-50%, -50%)',
          color: 'white',
          fontSize: '48px',
          fontWeight: 'bold',
          textShadow: '0 0 10px black',
          pointerEvents: 'none',
          userSelect: 'none'
        }}>
          ¡Lúdicas!
        </div>
      </div>

      <header className="ludicas-header">
        <p className="ludicas-subtitle">¡Encuentra tu actividad favorita y únete a la diversión!</p>
        <div className="search-barr">
          <input type="text" placeholder="Buscar actividad..." />
          <button className="search-btn">
            <i className="fas fa-search"></i>
          </button>
        </div>
      </header>

      <section className="ludicas-grid">
        {activities.map((activity) => (
          <div className="ludicas-card" key={activity.id}>
            <div className="card-image-container">
              <img className="ludicas-card-image" src={activity.image} alt={activity.title} />
              <div className="image-overlay"></div>
            </div>
            <div className="ludicas-card-content">
              <h3 className="card-title">{activity.title}</h3>
              <div className="card-info">
                <p className="info-item">
                  <i className="fas fa-map-marker-alt"></i> {activity.location}
                </p>
                <div className="schedule-section">
                  <p className="schedule-title"><i className="far fa-clock"></i> Horarios:</p>
                  <ul className="schedule-list">
                    {activity.schedule.map((time, index) => (
                      <li key={index}>{time}</li>
                    ))}
                  </ul>
                </div>
              </div>
              <button className="ludicas-btn" onClick={() => openModal(activity)}>
                <i className="fas fa-user-plus"></i> Más Detalles
              </button>
            </div>
          </div>
        ))}
      </section>

      <footer className="ludicas-footer">
        <p>¿No encuentras lo que buscas? <a href="#">Contáctanos</a></p>
      </footer>

      {/* Modal */}
      {showModal && selectedActivity && (
        <div className="modal-overlay" onClick={closeModal}>
          <div className="modal-content" onClick={e => e.stopPropagation()}>
            <button className="modal-close" onClick={closeModal}>×</button>
            <h2>{selectedActivity.title}</h2>
            <img src={selectedActivity.image} alt={selectedActivity.title} style={{ width: '100%', maxHeight: '200px', objectFit: 'cover' }} />
            <p><strong>Ubicación:</strong> {selectedActivity.location}</p>
            <p><strong>Descripción:</strong> {selectedActivity.description}</p>
            <p><strong>Horarios:</strong></p>
            <ul>
              {selectedActivity.schedule.map((time, idx) => <li key={idx}>{time}</li>)}
            </ul>
          </div>
        </div>
      )}
    </div>
  );
};

export default App;