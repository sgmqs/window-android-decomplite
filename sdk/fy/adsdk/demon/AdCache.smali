.class public Lcom/fy/adsdk/demon/AdCache;
.super Ljava/lang/Object;
.source "AdCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fy/adsdk/demon/AdCache$Utils;,
        Lcom/fy/adsdk/demon/AdCache$ACacheManager;,
        Lcom/fy/adsdk/demon/AdCache$xFileOutputStream;
    }
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0x7fffffff

.field private static final MAX_SIZE:I = 0x2faf080

.field public static final TIME_DAY:I = 0x15180

.field public static final TIME_HOUR:I = 0xe10

.field private static mInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fy/adsdk/demon/AdCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fy/adsdk/demon/AdCache;->mInstanceMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;JI)V
    .locals 8
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "max_size"    # J
    .param p4, "max_count"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t make dirs in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    new-instance v1, Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;-><init>(Lcom/fy/adsdk/demon/AdCache;Ljava/io/File;JILcom/fy/adsdk/demon/AdCache$1;)V

    iput-object v1, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/fy/adsdk/demon/AdCache;)Lcom/fy/adsdk/demon/AdCache$ACacheManager;
    .locals 1
    .param p0, "x0"    # Lcom/fy/adsdk/demon/AdCache;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/fy/adsdk/demon/AdCache;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v0, "AdCache"

    invoke-static {p0, v0}, Lcom/fy/adsdk/demon/AdCache;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/fy/adsdk/demon/AdCache;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;JI)Lcom/fy/adsdk/demon/AdCache;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "max_zise"    # J
    .param p3, "max_count"    # I

    .prologue
    .line 65
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "AdCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .local v0, "f":Ljava/io/File;
    invoke-static {v0, p1, p2, p3}, Lcom/fy/adsdk/demon/AdCache;->get(Ljava/io/File;JI)Lcom/fy/adsdk/demon/AdCache;

    move-result-object v1

    return-object v1
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/fy/adsdk/demon/AdCache;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .local v0, "f":Ljava/io/File;
    const-wide/32 v2, 0x2faf080

    const v1, 0x7fffffff

    invoke-static {v0, v2, v3, v1}, Lcom/fy/adsdk/demon/AdCache;->get(Ljava/io/File;JI)Lcom/fy/adsdk/demon/AdCache;

    move-result-object v1

    return-object v1
.end method

.method public static get(Ljava/io/File;)Lcom/fy/adsdk/demon/AdCache;
    .locals 3
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 61
    const-wide/32 v0, 0x2faf080

    const v2, 0x7fffffff

    invoke-static {p0, v0, v1, v2}, Lcom/fy/adsdk/demon/AdCache;->get(Ljava/io/File;JI)Lcom/fy/adsdk/demon/AdCache;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/io/File;JI)Lcom/fy/adsdk/demon/AdCache;
    .locals 5
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "max_zise"    # J
    .param p3, "max_count"    # I

    .prologue
    .line 70
    sget-object v1, Lcom/fy/adsdk/demon/AdCache;->mInstanceMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/fy/adsdk/demon/AdCache;->myPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fy/adsdk/demon/AdCache;

    .line 71
    .local v0, "manager":Lcom/fy/adsdk/demon/AdCache;
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/fy/adsdk/demon/AdCache;

    .end local v0    # "manager":Lcom/fy/adsdk/demon/AdCache;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fy/adsdk/demon/AdCache;-><init>(Ljava/io/File;JI)V

    .line 73
    .restart local v0    # "manager":Lcom/fy/adsdk/demon/AdCache;
    sget-object v1, Lcom/fy/adsdk/demon/AdCache;->mInstanceMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/fy/adsdk/demon/AdCache;->myPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    return-object v0
.end method

.method private static myPid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->clear()V
    invoke-static {v0}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$1600(Lcom/fy/adsdk/demon/AdCache$ACacheManager;)V

    .line 604
    return-void
.end method

.method public file(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 583
    iget-object v1, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v1, p1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$300(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 584
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    .end local v0    # "f":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "f":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 348
    iget-object v1, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v1, p1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$500(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 349
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    const/4 v1, 0x0

    .line 351
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0
.end method

.method public getAsBinary(Ljava/lang/String;)[B
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "RAFile":Ljava/io/RandomAccessFile;
    const/4 v5, 0x0

    .line 378
    .local v5, "removeFile":Z
    :try_start_0
    iget-object v7, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v7, p1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$500(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 379
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 394
    if-eqz v0, :cond_0

    .line 396
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 401
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 402
    invoke-virtual {p0, p1}, Lcom/fy/adsdk/demon/AdCache;->remove(Ljava/lang/String;)Z

    .end local v4    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-object v6

    .line 397
    .restart local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 398
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 381
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v1, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .local v1, "RAFile":Ljava/io/RandomAccessFile;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v2, v7, [B

    .line 383
    .local v2, "byteArray":[B
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 384
    # invokes: Lcom/fy/adsdk/demon/AdCache$Utils;->isDue([B)Z
    invoke-static {v2}, Lcom/fy/adsdk/demon/AdCache$Utils;->access$900([B)Z

    move-result v7

    if-nez v7, :cond_5

    .line 385
    # invokes: Lcom/fy/adsdk/demon/AdCache$Utils;->clearDateInfo([B)[B
    invoke-static {v2}, Lcom/fy/adsdk/demon/AdCache$Utils;->access$1000([B)[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 394
    if-eqz v1, :cond_3

    .line 396
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 401
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    .line 402
    invoke-virtual {p0, p1}, Lcom/fy/adsdk/demon/AdCache;->remove(Ljava/lang/String;)Z

    :cond_4
    move-object v0, v1

    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 397
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "RAFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v3

    .line 398
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 387
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    const/4 v5, 0x1

    .line 394
    if-eqz v1, :cond_6

    .line 396
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 401
    :cond_6
    :goto_3
    if-eqz v5, :cond_7

    .line 402
    invoke-virtual {p0, p1}, Lcom/fy/adsdk/demon/AdCache;->remove(Ljava/lang/String;)Z

    :cond_7
    move-object v0, v1

    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 397
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "RAFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v3

    .line 398
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 390
    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .end local v2    # "byteArray":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v3

    .line 391
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 394
    if-eqz v0, :cond_8

    .line 396
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 401
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_5
    if-eqz v5, :cond_1

    .line 402
    invoke-virtual {p0, p1}, Lcom/fy/adsdk/demon/AdCache;->remove(Ljava/lang/String;)Z

    goto :goto_1

    .line 397
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 398
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 394
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v0, :cond_9

    .line 396
    :try_start_8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 401
    :cond_9
    :goto_7
    if-eqz v5, :cond_a

    .line 402
    invoke-virtual {p0, p1}, Lcom/fy/adsdk/demon/AdCache;->remove(Ljava/lang/String;)Z

    :cond_a
    throw v6

    .line 397
    :catch_5
    move-exception v3

    .line 398
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 394
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 390
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "RAFile":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    goto :goto_4
.end method

.method public getAsBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Lcom/fy/adsdk/demon/AdCache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 529
    const/4 v0, 0x0

    .line 531
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fy/adsdk/demon/AdCache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    # invokes: Lcom/fy/adsdk/demon/AdCache$Utils;->Bytes2Bimap([B)Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/fy/adsdk/demon/AdCache$Utils;->access$1200([B)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getAsDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 570
    invoke-virtual {p0, p1}, Lcom/fy/adsdk/demon/AdCache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 571
    const/4 v0, 0x0

    .line 573
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fy/adsdk/demon/AdCache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    # invokes: Lcom/fy/adsdk/demon/AdCache$Utils;->Bytes2Bimap([B)Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/fy/adsdk/demon/AdCache$Utils;->access$1200([B)Landroid/graphics/Bitmap;

    move-result-object v0

    # invokes: Lcom/fy/adsdk/demon/AdCache$Utils;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/fy/adsdk/demon/AdCache$Utils;->access$1400(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getAsJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/fy/adsdk/demon/AdCache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "JSONString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-object v2

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 290
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/fy/adsdk/demon/AdCache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "JSONString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-object v2

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 461
    invoke-virtual {p0, p1}, Lcom/fy/adsdk/demon/AdCache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v2

    .line 462
    .local v2, "data":[B
    if-eqz v2, :cond_1

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .line 466
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 468
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .local v5, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 475
    .local v6, "reObject":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 476
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 481
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 482
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 488
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .end local v6    # "reObject":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v6

    .line 477
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "reObject":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 478
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 483
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 484
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 470
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .end local v6    # "reObject":Ljava/lang/Object;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v3

    .line 471
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 475
    if-eqz v0, :cond_2

    .line 476
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 481
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    if-eqz v4, :cond_1

    .line 482
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 483
    :catch_3
    move-exception v3

    .line 484
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 477
    .local v3, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 478
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 474
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 475
    :goto_4
    if-eqz v0, :cond_3

    .line 476
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 481
    :cond_3
    :goto_5
    if-eqz v4, :cond_4

    .line 482
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 485
    :cond_4
    :goto_6
    throw v7

    .line 477
    :catch_5
    move-exception v3

    .line 478
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 483
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 484
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 474
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 470
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 168
    iget-object v8, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v8, p1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$500(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 169
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-object v7

    .line 171
    :cond_1
    const/4 v6, 0x0

    .line 172
    .local v6, "removeFile":Z
    const/4 v3, 0x0

    .line 174
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_1
    const-string v5, ""

    .line 177
    .local v5, "readString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "currentLine":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 180
    :cond_2
    # invokes: Lcom/fy/adsdk/demon/AdCache$Utils;->isDue(Ljava/lang/String;)Z
    invoke-static {v5}, Lcom/fy/adsdk/demon/AdCache$Utils;->access$600(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 181
    # invokes: Lcom/fy/adsdk/demon/AdCache$Utils;->clearDateInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5}, Lcom/fy/adsdk/demon/AdCache$Utils;->access$700(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 190
    if-eqz v4, :cond_3

    .line 192
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 197
    :cond_3
    :goto_2
    if-eqz v6, :cond_0

    .line 198
    invoke-virtual {p0, p1}, Lcom/fy/adsdk/demon/AdCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 183
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v6, 0x1

    .line 190
    if-eqz v4, :cond_5

    .line 192
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 197
    :cond_5
    :goto_3
    if-eqz v6, :cond_0

    .line 198
    invoke-virtual {p0, p1}, Lcom/fy/adsdk/demon/AdCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 193
    :catch_1
    move-exception v1

    .line 194
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 186
    .end local v0    # "currentLine":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "readString":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 187
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    if-eqz v3, :cond_6

    .line 192
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 197
    :cond_6
    :goto_5
    if-eqz v6, :cond_0

    .line 198
    invoke-virtual {p0, p1}, Lcom/fy/adsdk/demon/AdCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 193
    :catch_3
    move-exception v1

    .line 194
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 190
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v3, :cond_7

    .line 192
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 197
    :cond_7
    :goto_7
    if-eqz v6, :cond_8

    .line 198
    invoke-virtual {p0, p1}, Lcom/fy/adsdk/demon/AdCache;->remove(Ljava/lang/String;)Z

    :cond_8
    throw v7

    .line 193
    :catch_4
    move-exception v1

    .line 194
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 190
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_6

    .line 186
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public put(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 336
    new-instance v0, Lcom/fy/adsdk/demon/AdCache$xFileOutputStream;

    iget-object v1, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v1, p1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$300(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fy/adsdk/demon/AdCache$xFileOutputStream;-><init>(Lcom/fy/adsdk/demon/AdCache;Ljava/io/File;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 504
    # invokes: Lcom/fy/adsdk/demon/AdCache$Utils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    invoke-static {p2}, Lcom/fy/adsdk/demon/AdCache$Utils;->access$1100(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fy/adsdk/demon/AdCache;->put(Ljava/lang/String;[B)V

    .line 505
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;
    .param p3, "saveTime"    # I

    .prologue
    .line 518
    # invokes: Lcom/fy/adsdk/demon/AdCache$Utils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    invoke-static {p2}, Lcom/fy/adsdk/demon/AdCache$Utils;->access$1100(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/fy/adsdk/demon/AdCache;->put(Ljava/lang/String;[BI)V

    .line 519
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 546
    # invokes: Lcom/fy/adsdk/demon/AdCache$Utils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    invoke-static {p2}, Lcom/fy/adsdk/demon/AdCache$Utils;->access$1300(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fy/adsdk/demon/AdCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 547
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/drawable/Drawable;
    .param p3, "saveTime"    # I

    .prologue
    .line 560
    # invokes: Lcom/fy/adsdk/demon/AdCache$Utils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    invoke-static {p2}, Lcom/fy/adsdk/demon/AdCache$Utils;->access$1300(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/fy/adsdk/demon/AdCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 561
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 418
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/fy/adsdk/demon/AdCache;->put(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 419
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;
    .param p3, "saveTime"    # I

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 435
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 437
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v5, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 438
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 439
    .local v2, "data":[B
    const/4 v6, -0x1

    if-eq p3, v6, :cond_0

    .line 440
    invoke-virtual {p0, p1, v2, p3}, Lcom/fy/adsdk/demon/AdCache;->put(Ljava/lang/String;[BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 448
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 452
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-void

    .line 442
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :cond_0
    :try_start_4
    invoke-virtual {p0, p1, v2}, Lcom/fy/adsdk/demon/AdCache;->put(Ljava/lang/String;[B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 444
    .end local v2    # "data":[B
    :catch_0
    move-exception v3

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 445
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 448
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 449
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 451
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 447
    .end local v2    # "data":[B
    :catchall_0
    move-exception v6

    .line 448
    :goto_3
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 450
    :goto_4
    throw v6

    .line 449
    :catch_3
    move-exception v7

    goto :goto_4

    .line 447
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 444
    :catch_4
    move-exception v3

    goto :goto_2

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v4, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v4, p1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$300(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 128
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 130
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    if-eqz v3, :cond_0

    .line 137
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 138
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->put(Ljava/io/File;)V
    invoke-static {v4, v1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$200(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/io/File;)V

    move-object v2, v3

    .line 145
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 139
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 133
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    if-eqz v2, :cond_1

    .line 137
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 138
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 143
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->put(Ljava/io/File;)V
    invoke-static {v4, v1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$200(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/io/File;)V

    goto :goto_1

    .line 139
    :catch_2
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_2

    .line 137
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 138
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 143
    :cond_2
    :goto_5
    iget-object v5, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->put(Ljava/io/File;)V
    invoke-static {v5, v1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$200(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/io/File;)V

    throw v4

    .line 139
    :catch_3
    move-exception v0

    .line 140
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 132
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "saveTime"    # I

    .prologue
    .line 158
    # invokes: Lcom/fy/adsdk/demon/AdCache$Utils;->newStringWithDateInfo(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {p3, p2}, Lcom/fy/adsdk/demon/AdCache$Utils;->access$400(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fy/adsdk/demon/AdCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;

    .prologue
    .line 260
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fy/adsdk/demon/AdCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;
    .param p3, "saveTime"    # I

    .prologue
    .line 274
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/fy/adsdk/demon/AdCache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 275
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .prologue
    .line 214
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fy/adsdk/demon/AdCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;
    .param p3, "saveTime"    # I

    .prologue
    .line 228
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/fy/adsdk/demon/AdCache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 306
    iget-object v4, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v4, p1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$300(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 307
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 309
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 314
    if-eqz v3, :cond_0

    .line 316
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 317
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 322
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->put(Ljava/io/File;)V
    invoke-static {v4, v1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$200(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/io/File;)V

    move-object v2, v3

    .line 324
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 318
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    if-eqz v2, :cond_1

    .line 316
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 317
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 322
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->put(Ljava/io/File;)V
    invoke-static {v4, v1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$200(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/io/File;)V

    goto :goto_1

    .line 318
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 319
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 314
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_2

    .line 316
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 317
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 322
    :cond_2
    :goto_5
    iget-object v5, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->put(Ljava/io/File;)V
    invoke-static {v5, v1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$200(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/io/File;)V

    throw v4

    .line 318
    :catch_3
    move-exception v0

    .line 319
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 314
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 311
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public put(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "saveTime"    # I

    .prologue
    .line 365
    # invokes: Lcom/fy/adsdk/demon/AdCache$Utils;->newByteArrayWithDateInfo(I[B)[B
    invoke-static {p3, p2}, Lcom/fy/adsdk/demon/AdCache$Utils;->access$800(I[B)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fy/adsdk/demon/AdCache;->put(Ljava/lang/String;[B)V

    .line 366
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->remove(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$1500(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
