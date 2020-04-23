package com.phms.service;

import com.phms.pojo.Appointment;

public interface AppointmentService {
    Object getAllByLimit(Appointment appointment);

    void deleteById(Long id);

    void add(Appointment appointment);

    void update(Appointment appointment);
}
