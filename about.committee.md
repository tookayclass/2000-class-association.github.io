---
title: Committee
---

<table class="table">
  <thead>
    <tr>
      <th scope="col">Role</th>
      <th scope="col">Name</th>
      <th scope="col">E-mail address</th>
    </tr>
  </thead>
  <tbody>
  	{% for member in site.data.committee %}
    <tr>
      <td>{{ member.role }}</td>
      <td>{{ member.name }}</td>
      <td><a href="mailto:{{ member.email }}">{{ member.email }}</a></td>
    </tr>
    {% endfor %}
  </tbody>
</table>

