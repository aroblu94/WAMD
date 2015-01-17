.class public Lninja/vextil/Tasks/CheckForUpdateTask;
.super Landroid/os/AsyncTask;
.source "CheckForUpdateTask.java"


# annotations
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
.field executeCallback:Lninja/vextil/Tasks/TaskCallback;

.field versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    move-object v1, v0

    invoke-direct {v1}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lninja/vextil/Tasks/CheckForUpdateTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    .prologue
    .line 29
    move-object/from16 v1, p0

    .local v1, "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    move-object/from16 v2, p1

    .local v2, "urls":[Ljava/lang/String;
    const-string v14, ""

    move-object v3, v14

    .line 30
    .local v3, "response":Ljava/lang/String;
    move-object v14, v2

    move-object v4, v14

    move-object v14, v4

    array-length v14, v14

    move v5, v14

    const/4 v14, 0x0

    move v6, v14

    :goto_0
    move v14, v6

    move v15, v5

    if-ge v14, v15, :cond_1

    move-object v14, v4

    move v15, v6

    aget-object v14, v14, v15

    move-object v7, v14

    .line 31
    .local v7, "url":Ljava/lang/String;
    new-instance v14, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    move-object v8, v14

    .line 32
    .local v8, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v14, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v7

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v9, v14

    .line 33
    .local v9, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    move-object v14, v9

    const-string v15, "User-Agent"

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "WhatsAppMD-Updater_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lninja/vextil/Tasks/CheckForUpdateTask;->versionCode:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    move-object v14, v8

    move-object v15, v9

    :try_start_0
    invoke-virtual {v14, v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    move-object v10, v14

    .line 36
    .local v10, "execute":Lorg/apache/http/HttpResponse;
    move-object v14, v10

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    move-object v11, v14

    .line 38
    .local v11, "content":Ljava/io/InputStream;
    new-instance v14, Ljava/io/BufferedReader;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    new-instance v16, Ljava/io/InputStreamReader;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    move-object/from16 v18, v11

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v15 .. v16}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v12, v14

    .line 40
    .local v12, "buffer":Ljava/io/BufferedReader;
    const-string v14, ""

    move-object v13, v14

    .line 41
    .local v13, "s":Ljava/lang/String;
    :goto_1
    move-object v14, v12

    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object v13, v15

    if-eqz v14, :cond_0

    .line 42
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    move-object v3, v14

    goto :goto_1

    .line 47
    .line 30
    .end local v10    # "execute":Lorg/apache/http/HttpResponse;
    .end local v11    # "content":Ljava/io/InputStream;
    .end local v12    # "buffer":Ljava/io/BufferedReader;
    .end local v13    # "s":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 45
    :catch_0
    move-exception v14

    move-object v10, v14

    .line 46
    .local v10, "e":Ljava/lang/Exception;
    move-object v14, v10

    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 49
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v9    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v14, v3

    move-object v1, v14

    .end local v1    # "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    return-object v1
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Lninja/vextil/Tasks/TaskCallback;)V
    .locals 10

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, p2

    .local v2, "versionCode":Ljava/lang/String;
    move-object v3, p3

    .local v3, "executeCallback":Lninja/vextil/Tasks/TaskCallback;
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lninja/vextil/Tasks/CheckForUpdateTask;->executeCallback:Lninja/vextil/Tasks/TaskCallback;

    .line 22
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lninja/vextil/Tasks/CheckForUpdateTask;->versionCode:Ljava/lang/String;

    .line 23
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-super {v4, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    .line 24
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lninja/vextil/Tasks/CheckForUpdateTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    move-object v1, p1

    .local v1, "result":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/Tasks/CheckForUpdateTask;->executeCallback:Lninja/vextil/Tasks/TaskCallback;

    move-object v3, v1

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lninja/vextil/Tasks/TaskCallback;->run(Ljava/lang/String;)V

    .line 55
    return-void
.end method
