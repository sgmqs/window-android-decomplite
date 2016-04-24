.class public final enum Lcom/baidu/mobads/VideoAdView$VideoSize;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/VideoAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobads/VideoAdView$VideoSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SIZE_16x9:Lcom/baidu/mobads/VideoAdView$VideoSize;

.field public static final enum SIZE_4x3:Lcom/baidu/mobads/VideoAdView$VideoSize;

.field private static final synthetic c:[Lcom/baidu/mobads/VideoAdView$VideoSize;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/baidu/mobads/VideoAdView$VideoSize;

    const-string v1, "SIZE_16x9"

    const/16 v2, 0x140

    const/16 v3, 0xb4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/baidu/mobads/VideoAdView$VideoSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/baidu/mobads/VideoAdView$VideoSize;->SIZE_16x9:Lcom/baidu/mobads/VideoAdView$VideoSize;

    new-instance v0, Lcom/baidu/mobads/VideoAdView$VideoSize;

    const-string v1, "SIZE_4x3"

    const/16 v2, 0x190

    const/16 v3, 0x12c

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/baidu/mobads/VideoAdView$VideoSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/baidu/mobads/VideoAdView$VideoSize;->SIZE_4x3:Lcom/baidu/mobads/VideoAdView$VideoSize;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/mobads/VideoAdView$VideoSize;

    sget-object v1, Lcom/baidu/mobads/VideoAdView$VideoSize;->SIZE_16x9:Lcom/baidu/mobads/VideoAdView$VideoSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mobads/VideoAdView$VideoSize;->SIZE_4x3:Lcom/baidu/mobads/VideoAdView$VideoSize;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/mobads/VideoAdView$VideoSize;->c:[Lcom/baidu/mobads/VideoAdView$VideoSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/baidu/mobads/VideoAdView$VideoSize;->a:I

    iput p4, p0, Lcom/baidu/mobads/VideoAdView$VideoSize;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobads/VideoAdView$VideoSize;
    .locals 1

    const-class v0, Lcom/baidu/mobads/VideoAdView$VideoSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobads/VideoAdView$VideoSize;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobads/VideoAdView$VideoSize;
    .locals 1

    sget-object v0, Lcom/baidu/mobads/VideoAdView$VideoSize;->c:[Lcom/baidu/mobads/VideoAdView$VideoSize;

    invoke-virtual {v0}, [Lcom/baidu/mobads/VideoAdView$VideoSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobads/VideoAdView$VideoSize;

    return-object v0
.end method


# virtual methods
.method protected getHeight()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobads/VideoAdView$VideoSize;->b:I

    return v0
.end method

.method protected getWidth()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobads/VideoAdView$VideoSize;->a:I

    return v0
.end method
