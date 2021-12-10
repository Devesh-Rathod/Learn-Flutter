import 'package:flutter/material.dart';
import 'package:learn_flutter/Course/Intro.dart';
import 'package:learn_flutter/Intoduction/3.dart';
import 'package:lottie/lottie.dart';

class UnderStand1 extends StatelessWidget {
  const UnderStand1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Intro()));
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: height * 0.3,
                  width: width * 0.5,
                  child: Lottie.asset('Assets/2.json'),
                ),
              ),
              Container(
                child: Text(
                  'Understanding The Flutter Architecture',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text(
                  "Flutter is a cross-platform UI toolkit that is designed to allow code reuse across operating systems such as iOS and Android, while also allowing applications to interface directly with underlying platform services. The goal is to enable developers to deliver high-performance apps that feel natural on different platforms, embracing differences where they exist while sharing as much code as possible.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text(
                  "Architectural layers",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text(
                  "Flutter is designed as an extensible, layered system. It exists as a series of independent libraries that each depend on the underlying layer. No layer has privileged access to the layer below, and every part of the framework level is designed to be optional and replaceable.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: Image.asset(
                  'Assets/21.png',
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                child: Text(
                  "Widgets",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text(
                  "As mentioned, Flutter emphasizes widgets as a unit of composition. Widgets are the building blocks of a Flutter app's user interface, and each widget is an immutable declaration of part of the user interface. Widgets form a hierarchy based on composition. Each widget nests inside its parent and can receive context from the parent. In the preceding code, all instantiated classes are widgets.Apps update their user interface in response to events (such as a user interaction) by telling the framework to replace a widget in the hierarchy with another widget. The framework then compares the new and old widgets, and efficiently updates the user interface. Flutter has its own implementations of each UI control, rather than deferring to those provided by the system: for example, there is a pure Dart implementation of both the iOS Switch control and the one for the Android equivalent.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text(
                  "Composition",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text(
                  "Widgets are typically composed of many other small, single-purpose widgets that combine to produce powerful effects. Where possible, the number of design concepts is kept to a minimum while allowing the total vocabulary to be large. For example, in the widgets layer, Flutter uses the same core concept (a Widget) to represent drawing to the screen, layout (positioning and sizing), user interactivity, state management, theming, animations, and navigation. In the animation layer, a pair of concepts, Animations and Tweens, cover most of the design space. In the rendering layer, RenderObjects are used to describe layout, painting, hit testing, and accessibility. In each of these cases, the corresponding vocabulary ends up being large: there are hundreds of widgets and render objects, and dozens of animation and tween types.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text(
                  "Building Widgets",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text(
                  "As mentioned earlier, you determine the visual representation of a widget by overriding the build() function to return a new element tree. This tree represents the widget’s part of the user interface in more concrete terms. For example, a toolbar widget might have a build function that returns a horizontal layout of some text and various buttons. As needed, the framework recursively asks each widget to build until the tree is entirely described by concrete renderable objects. The framework then stitches together the renderable objects into a renderable object tree. A widget’s build function should be free of side effects. Whenever the function is asked to build, the widget should return a new tree of widgets1, regardless of what the widget previously returned. The framework does the heavy lifting work to determine which build methods need to be called based on the render object tree (described in more detail later). More information about this process can be found in the Inside Flutter topic.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
               SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text(
                  "State Management",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text(
                  "So, if many widgets can contain state, how is state managed and passed around the system? As with any other class, you can use a constructor in a widget to initialize its data, so a build() method can ensure that any child widget is instantiated with the data it needs. As widget trees get deeper, however, passing state information up and down the tree hierarchy becomes cumbersome. So, a third widget type, InheritedWidget, provides an easy way to grab data from a shared ancestor. You can use InheritedWidget to create a state widget that wraps a common ancestor in the widget tree, as shown in this example : ",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: Image.asset(
                  'Assets/22.png',
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.arrow_forward_outlined),
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => How()));
        },
      ),
    );
  }
}
