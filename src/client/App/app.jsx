import React from 'react';
import {Registration} from "../pages/registration/registration";
import './app.css'

export class App extends  React.Component{
    render() {
        return(
            <div className="App" >
                <Registration />
            </div>
        )
    }

}