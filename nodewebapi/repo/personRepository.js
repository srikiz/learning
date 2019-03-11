'use strict';

const Person = require('../json/person');

class PersonRepository {
    constructor() {
        this.persons = new Map([
            [1, new Person(1, 'First Name 1', 'Last Name 1', 'email1@test.com')],
            [2, new Person(2, 'First Name 2', 'Last Name 2', 'email2@test.com')],
            [3, new Person(3, 'First Name 3', 'Last Name 3', 'email3@test.com')],
            [4, new Person(4, 'First Name 4', 'Last Name 4', 'email4@test.com')]
        ]);
    }

    getById(id) {
        return this.persons.get(id);
    }

    getAll() {
        return Array.from(this.persons.values());
    }

    remove() {
        const keys = Array.from(this.persons.keys());
        this.persons.delete(keys[keys.length - 1]);
    }

    save(person) {
        if (this.getById(person.id) !== undefined) {
            this.persons[person.id] = person;
            return 'Updated Person with id=' + person.id;
        }
        else {
            this.persons.set(person.id, person);
            return 'Added Person with id=' + person.id;
        }
    }
}

const personRepository = new PersonRepository();

module.exports = personRepository;