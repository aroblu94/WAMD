.class Lcom/whatsapp/a7t;
.super Ljava/lang/Object;
.source "a7t.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final a:Lcom/whatsapp/Conversation;


# direct methods
.method constructor <init>(Lcom/whatsapp/Conversation;)V
    .locals 0

    .prologue
    .line 2
    iput-object p1, p0, Lcom/whatsapp/a7t;->a:Lcom/whatsapp/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 3
    iget-object v0, p0, Lcom/whatsapp/a7t;->a:Lcom/whatsapp/Conversation;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/whatsapp/Conversation;->removeDialog(I)V

    .line 1
    return-void
.end method
