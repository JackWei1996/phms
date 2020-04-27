package com.phms.service;

import com.phms.pojo.Appointment;

import java.util.Map;

public interface AppointmentService {
    Object getAllByLimit(Appointment appointment);

    void deleteById(Long id);

    void add(Appointment appointment);

    void update(Appointment appointment);

    Appointment getById(Long id);

    Map<String, Integer> getFreeTimeById(Long docId, String s);
}
