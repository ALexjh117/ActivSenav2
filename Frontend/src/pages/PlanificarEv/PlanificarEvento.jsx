import React from "react";
import { useState } from "react";
import "./styles/styles.css";

function EventPlanner() {
  const [events, setEvents] = useState([]);
  const [eventName, setEventName] = useState("");
  const [eventDate, setEventDate] = useState("");
  const [eventType, setEventType] = useState("");
  const [eventDescription, setEventDescription] = useState("");
  const [eventActivities, setEventActivities] = useState("");
  const [qrVisible, setQrVisible] = useState({}); // Para mostrar el QR simulado por evento

  const addEvent = () => {
    if (
      !eventName.trim() ||
      !eventDate.trim() ||
      !eventType.trim() ||
      !eventDescription.trim() ||
      !eventActivities.trim()
    )
      return;
    const newEvent = {
      id: Date.now(),
      name: eventName,
      date: eventDate,
      type: eventType,
      description: eventDescription,
      activities: eventActivities,
    };
    setEvents([...events, newEvent]);
    setEventName("");
    setEventDate("");
    setEventType("");
    setEventDescription("");
    setEventActivities("");
  };

  const removeEvent = (id) => {
    setEvents(events.filter((event) => event.id !== id));
  };

  const toggleQr = (id) => {
    setQrVisible((prev) => ({ ...prev, [id]: !prev[id] }));
  };

  return (
    <div className="container">
      <h1 className="title">📅 Planificador de eventos</h1>
      <div className="form-container">
        <input
          type="text"
          placeholder="Nombre del evento"
          value={eventName}
          onChange={(e) => setEventName(e.target.value)}
        />
        <input
          type="date"
          value={eventDate}
          onChange={(e) => setEventDate(e.target.value)}
        />
        <input
          type="text"
          placeholder="Tipo de evento"
          value={eventType}
          onChange={(e) => setEventType(e.target.value)}
        />
        <textarea
          placeholder="Descripción del evento"
          value={eventDescription}
          onChange={(e) => setEventDescription(e.target.value)}
        />
        <textarea
          placeholder="Actividades del evento"
          value={eventActivities}
          onChange={(e) => setEventActivities(e.target.value)}
        />
        <button className="add-button" onClick={addEvent}>
          ➕ Agregar Evento
        </button>
      </div>
      <div>
        {events.map((event) => (
          <div key={event.id} className="event-item">
            <p className="event-name">{event.name}</p>
            <p className="event-date">📅 {event.date}</p>
            <p className="event-type">🔹 {event.type}</p>
            <p className="event-description">{event.description}</p>
            <p className="event-activities">
              🎯 Actividades: {event.activities}
            </p>
            <button className="qr-button" onClick={() => toggleQr(event.id)}>
              📲 Generar QR para evento
            </button>
            {qrVisible[event.id] && (
              <div className="qr-section">
                <div className="qr-placeholder">
                  <p>[QR Simulado para: {event.name}]</p>
                </div>
                <div className="event-image">
                  <img
                    src="https://via.placeholder.com/200x120.png?text=Imagen+del+Evento"
                    alt={`Imagen del evento ${event.name}`}
                    style={{ marginTop: "10px", borderRadius: "8px" }}
                  />
                </div>
                <div className="attendee-counter">
                  <p>👥 Personas que asistirán: <strong>{Math.floor(Math.random() * 100) + 1}</strong></p>
                </div>
              </div>
            )}
            <button
              className="delete-button"
              onClick={() => removeEvent(event.id)}
            >
              ❌ Eliminar
            </button>
          </div>
        ))}
      </div>
    </div>
  );
}

export default function PlanificarEvento() {
  return <EventPlanner />;
}
