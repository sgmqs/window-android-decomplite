.class public final enum Lcom/baidu/mobads/AdSettings$Education;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/AdSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Education"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobads/AdSettings$Education;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BACHELOR:Lcom/baidu/mobads/AdSettings$Education;

.field public static final enum DOCTOR:Lcom/baidu/mobads/AdSettings$Education;

.field public static final enum JUNIOR:Lcom/baidu/mobads/AdSettings$Education;

.field public static final enum MASTER:Lcom/baidu/mobads/AdSettings$Education;

.field public static final enum PRIMARY:Lcom/baidu/mobads/AdSettings$Education;

.field public static final enum SENIOR:Lcom/baidu/mobads/AdSettings$Education;

.field public static final enum SPECIALTY:Lcom/baidu/mobads/AdSettings$Education;

.field private static final synthetic b:[Lcom/baidu/mobads/AdSettings$Education;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/baidu/mobads/AdSettings$Education;

    const-string v1, "PRIMARY"

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/mobads/AdSettings$Education;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSettings$Education;->PRIMARY:Lcom/baidu/mobads/AdSettings$Education;

    new-instance v0, Lcom/baidu/mobads/AdSettings$Education;

    const-string v1, "JUNIOR"

    invoke-direct {v0, v1, v5, v5}, Lcom/baidu/mobads/AdSettings$Education;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSettings$Education;->JUNIOR:Lcom/baidu/mobads/AdSettings$Education;

    new-instance v0, Lcom/baidu/mobads/AdSettings$Education;

    const-string v1, "SENIOR"

    invoke-direct {v0, v1, v6, v6}, Lcom/baidu/mobads/AdSettings$Education;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSettings$Education;->SENIOR:Lcom/baidu/mobads/AdSettings$Education;

    new-instance v0, Lcom/baidu/mobads/AdSettings$Education;

    const-string v1, "SPECIALTY"

    invoke-direct {v0, v1, v7, v7}, Lcom/baidu/mobads/AdSettings$Education;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSettings$Education;->SPECIALTY:Lcom/baidu/mobads/AdSettings$Education;

    new-instance v0, Lcom/baidu/mobads/AdSettings$Education;

    const-string v1, "BACHELOR"

    invoke-direct {v0, v1, v8, v8}, Lcom/baidu/mobads/AdSettings$Education;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSettings$Education;->BACHELOR:Lcom/baidu/mobads/AdSettings$Education;

    new-instance v0, Lcom/baidu/mobads/AdSettings$Education;

    const-string v1, "MASTER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/mobads/AdSettings$Education;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSettings$Education;->MASTER:Lcom/baidu/mobads/AdSettings$Education;

    new-instance v0, Lcom/baidu/mobads/AdSettings$Education;

    const-string v1, "DOCTOR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/mobads/AdSettings$Education;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSettings$Education;->DOCTOR:Lcom/baidu/mobads/AdSettings$Education;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/baidu/mobads/AdSettings$Education;

    sget-object v1, Lcom/baidu/mobads/AdSettings$Education;->PRIMARY:Lcom/baidu/mobads/AdSettings$Education;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mobads/AdSettings$Education;->JUNIOR:Lcom/baidu/mobads/AdSettings$Education;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mobads/AdSettings$Education;->SENIOR:Lcom/baidu/mobads/AdSettings$Education;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/mobads/AdSettings$Education;->SPECIALTY:Lcom/baidu/mobads/AdSettings$Education;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/mobads/AdSettings$Education;->BACHELOR:Lcom/baidu/mobads/AdSettings$Education;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/mobads/AdSettings$Education;->MASTER:Lcom/baidu/mobads/AdSettings$Education;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/mobads/AdSettings$Education;->DOCTOR:Lcom/baidu/mobads/AdSettings$Education;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/mobads/AdSettings$Education;->b:[Lcom/baidu/mobads/AdSettings$Education;

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

    iput p3, p0, Lcom/baidu/mobads/AdSettings$Education;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobads/AdSettings$Education;
    .locals 1

    const-class v0, Lcom/baidu/mobads/AdSettings$Education;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobads/AdSettings$Education;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobads/AdSettings$Education;
    .locals 1

    sget-object v0, Lcom/baidu/mobads/AdSettings$Education;->b:[Lcom/baidu/mobads/AdSettings$Education;

    invoke-virtual {v0}, [Lcom/baidu/mobads/AdSettings$Education;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobads/AdSettings$Education;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobads/AdSettings$Education;->a:I

    return v0
.end method
