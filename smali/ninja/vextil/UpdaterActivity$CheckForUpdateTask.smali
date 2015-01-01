.class Lninja/vextil/UpdaterActivity$CheckForUpdateTask;
.super Landroid/os/AsyncTask;
.source "UpdaterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lninja/vextil/UpdaterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lninja/vextil/UpdaterActivity;


# direct methods
.method private constructor <init>(Lninja/vextil/UpdaterActivity;)V
    .locals 4

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$CheckForUpdateTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lninja/vextil/UpdaterActivity$CheckForUpdateTask;->this$0:Lninja/vextil/UpdaterActivity;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lninja/vextil/UpdaterActivity;Lninja/vextil/UpdaterActivity$1;)V
    .locals 5

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$CheckForUpdateTask;
    move-object v1, p1

    .local v1, "x0":Lninja/vextil/UpdaterActivity;
    move-object v2, p2

    .local v2, "x1":Lninja/vextil/UpdaterActivity$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lninja/vextil/UpdaterActivity$CheckForUpdateTask;-><init>(Lninja/vextil/UpdaterActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$CheckForUpdateTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lninja/vextil/UpdaterActivity$CheckForUpdateTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lninja/vextil/UpdaterActivity$CheckForUpdateTask;
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    .prologue
    .line 292
    move-object/from16 v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$CheckForUpdateTask;
    move-object/from16 v1, p1

    .local v1, "urls":[Ljava/lang/String;
    const-string v13, ""

    move-object v2, v13

    .line 293
    .local v2, "response":Ljava/lang/String;
    move-object v13, v1

    move-object v3, v13

    move-object v13, v3

    array-length v13, v13

    move v4, v13

    const/4 v13, 0x0

    move v5, v13

    :goto_0
    move v13, v5

    move v14, v4

    if-ge v13, v14, :cond_1

    move-object v13, v3

    move v14, v5

    aget-object v13, v13, v14

    move-object v6, v13

    .line 294
    .local v6, "url":Ljava/lang/String;
    new-instance v13, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    move-object v7, v13

    .line 295
    .local v7, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v6

    invoke-direct {v14, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v8, v13

    .line 296
    .local v8, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    move-object v13, v8

    const-string v14, "User-Agent"

    const-string v15, "WhatsAppMD-Updater_200100"

    invoke-virtual {v13, v14, v15}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    move-object v13, v7

    move-object v14, v8

    :try_start_0
    invoke-virtual {v13, v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    move-object v9, v13

    .line 299
    .local v9, "execute":Lorg/apache/http/HttpResponse;
    move-object v13, v9

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    move-object v10, v13

    .line 301
    .local v10, "content":Ljava/io/InputStream;
    new-instance v13, Ljava/io/BufferedReader;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    new-instance v15, Ljava/io/InputStreamReader;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v17, v10

    invoke-direct/range {v16 .. v17}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v11, v13

    .line 303
    .local v11, "buffer":Ljava/io/BufferedReader;
    const-string v13, ""

    move-object v12, v13

    .line 304
    .local v12, "s":Ljava/lang/String;
    :goto_1
    move-object v13, v11

    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v12, v14

    if-eqz v13, :cond_0

    .line 305
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    move-object v2, v13

    goto :goto_1

    .line 310
    .line 293
    .end local v9    # "execute":Lorg/apache/http/HttpResponse;
    .end local v10    # "content":Ljava/io/InputStream;
    .end local v11    # "buffer":Ljava/io/BufferedReader;
    .end local v12    # "s":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 308
    :catch_0
    move-exception v13

    move-object v9, v13

    .line 309
    .local v9, "e":Ljava/lang/Exception;
    move-object v13, v9

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 312
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v8    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v13, v2

    move-object v0, v13

    .end local v0    # "this":Lninja/vextil/UpdaterActivity$CheckForUpdateTask;
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$CheckForUpdateTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lninja/vextil/UpdaterActivity$CheckForUpdateTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$CheckForUpdateTask;
    move-object v1, p1

    .local v1, "result":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity$CheckForUpdateTask;->this$0:Lninja/vextil/UpdaterActivity;

    move-object v3, v1

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lninja/vextil/UpdaterActivity;->OnCheckForUpdateFinished(Ljava/lang/String;)V

    .line 318
    return-void
.end method
