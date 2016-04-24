.class Lcom/baidu/mobads/GifAnimView;
.super Landroid/view/View;

# interfaces
.implements Lcom/baidu/mobads/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/GifAnimView$1;,
        Lcom/baidu/mobads/GifAnimView$a;,
        Lcom/baidu/mobads/GifAnimView$GifImageType;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/mobads/x;

.field private b:Landroid/graphics/Bitmap;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;

.field private h:Lcom/baidu/mobads/GifAnimView$a;

.field private i:Lcom/baidu/mobads/GifAnimView$GifImageType;

.field private j:Lcom/baidu/mobads/aa;

.field private k:I

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobads/aa;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    iput-object v1, p0, Lcom/baidu/mobads/GifAnimView;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobads/GifAnimView;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobads/GifAnimView;->d:Z

    iput v2, p0, Lcom/baidu/mobads/GifAnimView;->e:I

    iput v2, p0, Lcom/baidu/mobads/GifAnimView;->f:I

    iput-object v1, p0, Lcom/baidu/mobads/GifAnimView;->g:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/baidu/mobads/GifAnimView;->h:Lcom/baidu/mobads/GifAnimView$a;

    sget-object v0, Lcom/baidu/mobads/GifAnimView$GifImageType;->SYNC_DECODER:Lcom/baidu/mobads/GifAnimView$GifImageType;

    iput-object v0, p0, Lcom/baidu/mobads/GifAnimView;->i:Lcom/baidu/mobads/GifAnimView$GifImageType;

    const/16 v0, 0xff

    iput v0, p0, Lcom/baidu/mobads/GifAnimView;->k:I

    new-instance v0, Lcom/baidu/mobads/z;

    invoke-direct {v0, p0}, Lcom/baidu/mobads/z;-><init>(Lcom/baidu/mobads/GifAnimView;)V

    iput-object v0, p0, Lcom/baidu/mobads/GifAnimView;->l:Landroid/os/Handler;

    iput-object p2, p0, Lcom/baidu/mobads/GifAnimView;->j:Lcom/baidu/mobads/aa;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobads/GifAnimView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/GifAnimView;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mobads/GifAnimView;)Lcom/baidu/mobads/aa;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->j:Lcom/baidu/mobads/aa;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mobads/GifAnimView;)Lcom/baidu/mobads/x;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    return-object v0
.end method

.method private b(Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    invoke-virtual {v0}, Lcom/baidu/mobads/x;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    :cond_0
    new-instance v0, Lcom/baidu/mobads/x;

    invoke-direct {v0, p1, p0}, Lcom/baidu/mobads/x;-><init>(Ljava/io/InputStream;Lcom/baidu/mobads/w;)V

    iput-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    invoke-virtual {v0}, Lcom/baidu/mobads/x;->start()V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->l:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/GifAnimView;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/baidu/mobads/GifAnimView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobads/GifAnimView;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/baidu/mobads/GifAnimView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobads/GifAnimView;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/baidu/mobads/GifAnimView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->l:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobads/GifAnimView;->d:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mobads/GifAnimView;->k:I

    invoke-virtual {p0}, Lcom/baidu/mobads/GifAnimView;->invalidate()V

    return-void
.end method

.method public a(II)V
    .locals 2

    const/4 v1, 0x0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput p1, p0, Lcom/baidu/mobads/GifAnimView;->e:I

    iput p2, p0, Lcom/baidu/mobads/GifAnimView;->f:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobads/GifAnimView;->g:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->g:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->g:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->g:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->g:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mobads/GifAnimView;->b(Ljava/io/InputStream;)V

    return-void
.end method

.method public a(ZI)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mobads/GifAnimView$1;->a:[I

    iget-object v1, p0, Lcom/baidu/mobads/GifAnimView;->i:Lcom/baidu/mobads/GifAnimView$GifImageType;

    invoke-virtual {v1}, Lcom/baidu/mobads/GifAnimView$GifImageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v3, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    invoke-virtual {v0}, Lcom/baidu/mobads/x;->b()I

    move-result v0

    if-le v0, v2, :cond_1

    new-instance v0, Lcom/baidu/mobads/GifAnimView$a;

    invoke-direct {v0, p0, v4}, Lcom/baidu/mobads/GifAnimView$a;-><init>(Lcom/baidu/mobads/GifAnimView;Lcom/baidu/mobads/z;)V

    invoke-virtual {v0}, Lcom/baidu/mobads/GifAnimView$a;->start()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/baidu/mobads/GifAnimView;->c()V

    goto :goto_0

    :pswitch_1
    if-ne p2, v2, :cond_2

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    invoke-virtual {v0}, Lcom/baidu/mobads/x;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobads/GifAnimView;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/baidu/mobads/GifAnimView;->c()V

    goto :goto_0

    :cond_2
    if-ne p2, v3, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    invoke-virtual {v0}, Lcom/baidu/mobads/x;->b()I

    move-result v0

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->h:Lcom/baidu/mobads/GifAnimView$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mobads/GifAnimView$a;

    invoke-direct {v0, p0, v4}, Lcom/baidu/mobads/GifAnimView$a;-><init>(Lcom/baidu/mobads/GifAnimView;Lcom/baidu/mobads/z;)V

    iput-object v0, p0, Lcom/baidu/mobads/GifAnimView;->h:Lcom/baidu/mobads/GifAnimView$a;

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->h:Lcom/baidu/mobads/GifAnimView$a;

    invoke-virtual {v0}, Lcom/baidu/mobads/GifAnimView$a;->start()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/baidu/mobads/GifAnimView;->c()V

    goto :goto_0

    :pswitch_2
    if-ne p2, v2, :cond_4

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    invoke-virtual {v0}, Lcom/baidu/mobads/x;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobads/GifAnimView;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/baidu/mobads/GifAnimView;->c()V

    goto :goto_0

    :cond_4
    if-ne p2, v3, :cond_5

    invoke-direct {p0}, Lcom/baidu/mobads/GifAnimView;->c()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->h:Lcom/baidu/mobads/GifAnimView$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mobads/GifAnimView$a;

    invoke-direct {v0, p0, v4}, Lcom/baidu/mobads/GifAnimView$a;-><init>(Lcom/baidu/mobads/GifAnimView;Lcom/baidu/mobads/z;)V

    iput-object v0, p0, Lcom/baidu/mobads/GifAnimView;->h:Lcom/baidu/mobads/GifAnimView$a;

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->h:Lcom/baidu/mobads/GifAnimView$a;

    invoke-virtual {v0}, Lcom/baidu/mobads/GifAnimView$a;->start()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobads/GifAnimView;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobads/GifAnimView;->c:Z

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    invoke-virtual {v0}, Lcom/baidu/mobads/x;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/baidu/mobads/GifAnimView;->b()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    invoke-virtual {v0}, Lcom/baidu/mobads/x;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobads/GifAnimView;->b:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/baidu/mobads/GifAnimView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/baidu/mobads/GifAnimView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget v2, p0, Lcom/baidu/mobads/GifAnimView;->k:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, p0, Lcom/baidu/mobads/GifAnimView;->e:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/baidu/mobads/GifAnimView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/baidu/mobads/GifAnimView;->b:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/mobads/GifAnimView;->g:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/baidu/mobads/GifAnimView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/baidu/mobads/GifAnimView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/baidu/mobads/GifAnimView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/baidu/mobads/GifAnimView;->getPaddingBottom()I

    move-result v5

    iget-object v1, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    if-nez v1, :cond_0

    move v1, v0

    :goto_0
    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v2, v4, v5

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/baidu/mobads/GifAnimView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/mobads/GifAnimView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, p1}, Lcom/baidu/mobads/GifAnimView;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/baidu/mobads/GifAnimView;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/baidu/mobads/GifAnimView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    iget v1, v0, Lcom/baidu/mobads/x;->a:I

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView;->a:Lcom/baidu/mobads/x;

    iget v0, v0, Lcom/baidu/mobads/x;->b:I

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "GifAnimView.onWindowVisibilityChanged"

    aput-object v3, v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "visibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/baidu/mobads/b/f;->a([Ljava/lang/Object;)I

    if-eqz p1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/mobads/GifAnimView;->d:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
