import './App.css';
import { BrowserRouter as Router, Route, Routes, Link } from 'react-router-dom';
import Home from './pages/Home';
import CreatePost from './pages/CreatePost';
import Post from './pages/Post';
import Registration from './pages/Registration';
import Login from './pages/Login';

function App() {
	return (
		<div className="App">
			<Router>
				<div className="navbar">
					<Link to="/">Homepage</Link>
					<Link to="/createpost">Create A Post</Link>
					<Link to="/login">Login</Link>
					<Link to="/registration">Registration</Link>
				</div>
				<Routes>
					<Route path="/" exact element={<Home />}></Route>
					<Route
						path="/createpost"
						exact
						element={<CreatePost />}></Route>
					<Route path="/post/:id" exact element={<Post />}></Route>
					<Route path="/login" exact element={<Login />}></Route>
					<Route
						path="/registration"
						exact
						element={<Registration />}></Route>
				</Routes>
			</Router>
		</div>
	);
}

export default App;
