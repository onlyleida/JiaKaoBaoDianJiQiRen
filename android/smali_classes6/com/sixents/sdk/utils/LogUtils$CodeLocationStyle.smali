.class public final enum Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sixents/sdk/utils/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CodeLocationStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;

.field public static final enum FIRST:Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;

.field public static final enum SUBSEQUENT:Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;


# instance fields
.field private isAt:Z

.field private isSimpleClassName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;

    const-string v1, "FIRST"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;->FIRST:Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;

    .line 2
    new-instance v1, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;

    const-string v4, "SUBSEQUENT"

    invoke-direct {v1, v4, v3, v3, v3}, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;->SUBSEQUENT:Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;->$VALUES:[Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;->isAt:Z

    .line 3
    iput-boolean p4, p0, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;->isSimpleClassName:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;
    .locals 1

    .line 1
    const-class v0, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;

    return-object p0
.end method

.method public static values()[Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;
    .locals 1

    .line 1
    sget-object v0, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;->$VALUES:[Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;

    invoke-virtual {v0}, [Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;

    return-object v0
.end method


# virtual methods
.method public isAt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;->isAt:Z

    return v0
.end method

.method public isSimpleClassName()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;->isSimpleClassName:Z

    return v0
.end method
