.class Lcom/getbase/floatingactionbutton/FloatingActionButton$3;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getbase/floatingactionbutton/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$3;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$3;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->callOnClick()Z

    .line 177
    return-void
.end method
