.class public final enum Lcom/baidu/mobads/AdSize;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobads/AdSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Banner:Lcom/baidu/mobads/AdSize;

.field public static final enum InterstitialForVideoBeforePlay:Lcom/baidu/mobads/AdSize;

.field public static final enum InterstitialForVideoPausePlay:Lcom/baidu/mobads/AdSize;

.field public static final enum InterstitialGame:Lcom/baidu/mobads/AdSize;

.field public static final enum InterstitialOther:Lcom/baidu/mobads/AdSize;

.field public static final enum InterstitialReader:Lcom/baidu/mobads/AdSize;

.field public static final enum InterstitialRefresh:Lcom/baidu/mobads/AdSize;

.field public static final enum Square:Lcom/baidu/mobads/AdSize;

.field protected static final VIDEO_AD:I = 0xe

.field private static final synthetic b:[Lcom/baidu/mobads/AdSize;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/baidu/mobads/AdSize;

    const-string v1, "Banner"

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/mobads/AdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSize;->Banner:Lcom/baidu/mobads/AdSize;

    new-instance v0, Lcom/baidu/mobads/AdSize;

    const-string v1, "Square"

    invoke-direct {v0, v1, v5, v5}, Lcom/baidu/mobads/AdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSize;->Square:Lcom/baidu/mobads/AdSize;

    new-instance v0, Lcom/baidu/mobads/AdSize;

    const-string v1, "InterstitialGame"

    invoke-direct {v0, v1, v8, v6}, Lcom/baidu/mobads/AdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSize;->InterstitialGame:Lcom/baidu/mobads/AdSize;

    new-instance v0, Lcom/baidu/mobads/AdSize;

    const-string v1, "InterstitialReader"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/baidu/mobads/AdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSize;->InterstitialReader:Lcom/baidu/mobads/AdSize;

    new-instance v0, Lcom/baidu/mobads/AdSize;

    const-string v1, "InterstitialRefresh"

    const/4 v2, 0x4

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/mobads/AdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSize;->InterstitialRefresh:Lcom/baidu/mobads/AdSize;

    new-instance v0, Lcom/baidu/mobads/AdSize;

    const-string v1, "InterstitialOther"

    const/4 v2, 0x5

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/mobads/AdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSize;->InterstitialOther:Lcom/baidu/mobads/AdSize;

    new-instance v0, Lcom/baidu/mobads/AdSize;

    const-string v1, "InterstitialForVideoBeforePlay"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v6, v2}, Lcom/baidu/mobads/AdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSize;->InterstitialForVideoBeforePlay:Lcom/baidu/mobads/AdSize;

    new-instance v0, Lcom/baidu/mobads/AdSize;

    const-string v1, "InterstitialForVideoPausePlay"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v7, v2}, Lcom/baidu/mobads/AdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSize;->InterstitialForVideoPausePlay:Lcom/baidu/mobads/AdSize;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/baidu/mobads/AdSize;

    sget-object v1, Lcom/baidu/mobads/AdSize;->Banner:Lcom/baidu/mobads/AdSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mobads/AdSize;->Square:Lcom/baidu/mobads/AdSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mobads/AdSize;->InterstitialGame:Lcom/baidu/mobads/AdSize;

    aput-object v1, v0, v8

    const/4 v1, 0x3

    sget-object v2, Lcom/baidu/mobads/AdSize;->InterstitialReader:Lcom/baidu/mobads/AdSize;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/baidu/mobads/AdSize;->InterstitialRefresh:Lcom/baidu/mobads/AdSize;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/mobads/AdSize;->InterstitialOther:Lcom/baidu/mobads/AdSize;

    aput-object v2, v0, v1

    sget-object v1, Lcom/baidu/mobads/AdSize;->InterstitialForVideoBeforePlay:Lcom/baidu/mobads/AdSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/mobads/AdSize;->InterstitialForVideoPausePlay:Lcom/baidu/mobads/AdSize;

    aput-object v1, v0, v7

    sput-object v0, Lcom/baidu/mobads/AdSize;->b:[Lcom/baidu/mobads/AdSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/baidu/mobads/AdSize;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobads/AdSize;
    .locals 1

    const-class v0, Lcom/baidu/mobads/AdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobads/AdSize;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobads/AdSize;
    .locals 1

    sget-object v0, Lcom/baidu/mobads/AdSize;->b:[Lcom/baidu/mobads/AdSize;

    invoke-virtual {v0}, [Lcom/baidu/mobads/AdSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobads/AdSize;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobads/AdSize;->a:I

    return v0
.end method
