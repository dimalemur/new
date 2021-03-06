import React from 'react'
import './authorization.css'

export class Authorization extends React.Component{
    constructor(props){
        super(props);
        this.state = {
            user: "",
            password: ""
        };
        this.submitForm = this.submitForm.bind(this);
        this.changeUser = this.changeUser.bind(this);
        this.changePassword = this.changePassword.bind(this);
    }

    submitForm (event){
        console.log("Form submitted");
        event.preventDefault();

        fetch('/login', {
            method: 'post',
            body: JSON.stringify(this.state),
        })
            .then((res) => {
                console.log("Ответ Получен: ", res);
            })
            .catch((err) =>{
                console.log("Ошибка отправки: ", err)
            });

    };

    changeUser(event){
        this.setState({user:event.target.value});
    }

    changePassword(event){
        this.setState({password:event.target.value})
    }

    getRegistered(event){
        event.preventDefault();
    }

    render() {
        return (
            <div className="Authorization">
                    <form  action= "/login" method="POST" className="Authorization-Inner" onSubmit={this.submitForm}>
                        <input placeholder="Username" name="user" className= "Authorization-Username" value= {this.state.user} onChange={this.changeUser}/>
                        <input placeholder="Password" name="password" className= "Authorization-Password" value= {this.state.password} onChange={this.changePassword}/>
                        <button className="Authorization-Login Button" type="submit">Войти</button>
                        <button onClick={this.getRegistered} className="Authorization-Registration Button">Регистрация</button>
                    </form>
            </div>
        )
    }
}

