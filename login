//This program demonstrate using of nested pane to set up the layout
import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.TilePane;
import javafx.scene.text.Font;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.geometry.Orientation;
import javafx.scene.paint.Color;

public class NestedPaneDemoTwo extends Application
{
  public void start(Stage primaryStage)
  {
    //Create a border pane as the root
    BorderPane rootPane = new BorderPane();

    //centerPane is a GridPane, it contains 3 labels and 3 text fields
    GridPane centerPane = new GridPane();
	centerPane.setAlignment(Pos.CENTER);
    centerPane.setPadding(new Insets(10, 10, 10, 10));
    centerPane.setHgap(5);
    centerPane.setVgap(10);

	//Create 3 labels
    Label Username = new Label("USERNAME");
    Label Password = new Label("PASSWORD");
    Label Welcome = new Label("WELCOME TO STRING CHEESE PIZZERIA");

    Welcome.setFont(new Font("Arial", 30));
    Welcome.setTextFill(Color.RED);
    
    //Create 3 text fields
    TextField UsernameField = new TextField();
    TextField PassField = new TextField();

   	//add the 3 labels and 3 text fields accordingly
    centerPane.add(Username, 0, 4);
    centerPane.add(UsernameField, 0, 5);
    centerPane.add(Password, 0, 6);
    centerPane.add(PassField, 0, 7);
    centerPane.add(Welcome,0, 0);

 	//eastPane is a vertical TilePane, it contains 4 buttons
	TilePane eastPane = new TilePane(Orientation.VERTICAL);
	eastPane.setAlignment(Pos.CENTER);
    eastPane.setPadding(new Insets(10, 10, 10, 10));

 	//southPane is a horizontal TilePane, it contains 3 buttons
	TilePane southPane = new TilePane(Orientation.HORIZONTAL);
	southPane.setAlignment(Pos.CENTER);

    //create three buttons
    Button button5 = new Button("Login");
    Button button6 = new Button("Sign-In Later");

	//To enable the buttons to be resized to the size of the tile,
    button5.setMaxSize(Double.MAX_VALUE, Double.MAX_VALUE);
	button6.setMaxSize(Double.MAX_VALUE, Double.MAX_VALUE);

	//set the horizontal gap between above 3 buttons
	southPane.setHgap(20.0);
	southPane.getChildren().addAll(button5,button6);
    southPane.setPadding(new Insets(10, 10, 10, 10));

    //Place centerPane, eastPane and southPane inside the rootPane
    rootPane.setCenter(centerPane);
    rootPane.setRight(eastPane);
    rootPane.setBottom(southPane);

    // Create a scene and place it in the stage
    Scene scene = new Scene(rootPane, 700, 700);
    primaryStage.setTitle("Nest Pane Demo"); // Set the stage title
    primaryStage.setScene(scene); // Place the scene in the stage
    primaryStage.show(); // Display the stage
  }
  
  
  public static void main(String[] args) {
      launch(args);
  }
}
