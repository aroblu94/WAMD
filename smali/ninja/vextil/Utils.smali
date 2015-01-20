.class public Lninja/vextil/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Utils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertByteArrayToHexString([B)Ljava/lang/String;
    .locals 10

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "arrayBytes":[B
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v6

    .line 80
    .local v1, "stringBuffer":Ljava/lang/StringBuilder;
    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-byte v6, v6, v7

    move v5, v6

    .line 81
    .local v5, "arrayByte":B
    move-object v6, v1

    move v7, v5

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x100

    add-int/lit16 v7, v7, 0x100

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    .line 82
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 81
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    .end local v5    # "arrayByte":B
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "arrayBytes":[B
    return-object v0
.end method

.method public static fileExists(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "QW5kcm9pZA=="

    const/4 v8, 0x0

    .line 23
    invoke-static {v7, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 24
    .local v1, "file":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "message":Ljava/lang/String;
    move-object v1, p1

    .local v1, "algorithm":Ljava/lang/String;
    const-string v5, ""

    move-object v2, v5

    .line 69
    .local v2, "hash":Ljava/lang/String;
    move-object v5, v1

    :try_start_0
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    move-object v3, v5

    .line 70
    .local v3, "digest":Ljava/security/MessageDigest;
    move-object v5, v3

    move-object v6, v0

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    move-object v4, v5

    .line 71
    .local v4, "hashedBytes":[B
    move-object v5, v4

    invoke-static {v5}, Lninja/vextil/Utils;->convertByteArrayToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    move-object v2, v5

    .line 74
    .line 75
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "hashedBytes":[B
    :goto_0
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "message":Ljava/lang/String;
    return-object v0

    .line 72
    .restart local v0    # "message":Ljava/lang/String;
    :catch_0
    move-exception v5

    :goto_1
    move-object v3, v5

    .line 73
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "WAMD Utils"

    const-string v6, "Error generating hash"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 72
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-string v6, ""

    move-object v1, v6

    .line 49
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "QW5kcm9pZA=="

    const/4 v12, 0x0

    .line 51
    invoke-static {v11, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 53
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v2

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v3, v6

    .line 54
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v6, v2

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v6

    move v4, v6

    .line 55
    .local v4, "size":I
    move v6, v4

    new-array v6, v6, [C

    move-object v5, v6

    .line 56
    .local v5, "buffer":[C
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    .line 57
    move-object v6, v2

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 58
    new-instance v6, Ljava/lang/String;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v5

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 61
    .line 62
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v4    # "size":I
    .end local v5    # "buffer":[C
    :goto_0
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "name":Ljava/lang/String;
    return-object v0

    .line 59
    .restart local v0    # "name":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 60
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "WAMD Utils"

    const-string v7, "File not found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0
.end method

.method public static writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "data":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "QW5kcm9pZA=="

    const/4 v9, 0x0

    .line 30
    invoke-static {v8, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 31
    .local v2, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 33
    .local v3, "file":Ljava/io/File;
    move-object v5, v3

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 34
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v5

    .line 35
    new-instance v5, Ljava/io/OutputStreamWriter;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/io/FileOutputStream;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 36
    .local v4, "outputStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 37
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .end local v4    # "outputStreamWriter":Ljava/io/OutputStreamWriter;
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 41
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "WAMD Utils"

    const-string v6, "File write failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method
