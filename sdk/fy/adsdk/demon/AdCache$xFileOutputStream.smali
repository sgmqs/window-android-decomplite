.class Lcom/fy/adsdk/demon/AdCache$xFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "AdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fy/adsdk/demon/AdCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "xFileOutputStream"
.end annotation


# instance fields
.field file:Ljava/io/File;

.field final synthetic this$0:Lcom/fy/adsdk/demon/AdCache;


# direct methods
.method public constructor <init>(Lcom/fy/adsdk/demon/AdCache;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fy/adsdk/demon/AdCache;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 102
    iput-object p1, p0, Lcom/fy/adsdk/demon/AdCache$xFileOutputStream;->this$0:Lcom/fy/adsdk/demon/AdCache;

    .line 103
    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 104
    iput-object p2, p0, Lcom/fy/adsdk/demon/AdCache$xFileOutputStream;->file:Ljava/io/File;

    .line 105
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 109
    iget-object v0, p0, Lcom/fy/adsdk/demon/AdCache$xFileOutputStream;->this$0:Lcom/fy/adsdk/demon/AdCache;

    # getter for: Lcom/fy/adsdk/demon/AdCache;->mCache:Lcom/fy/adsdk/demon/AdCache$ACacheManager;
    invoke-static {v0}, Lcom/fy/adsdk/demon/AdCache;->access$100(Lcom/fy/adsdk/demon/AdCache;)Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fy/adsdk/demon/AdCache$xFileOutputStream;->file:Ljava/io/File;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->put(Ljava/io/File;)V
    invoke-static {v0, v1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$200(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/io/File;)V

    .line 110
    return-void
.end method
