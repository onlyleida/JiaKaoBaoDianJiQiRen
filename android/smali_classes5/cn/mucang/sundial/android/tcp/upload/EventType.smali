.class public final enum Lcn/mucang/sundial/android/tcp/upload/EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/sundial/android/tcp/upload/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/sundial/android/tcp/upload/EventType;

.field public static final enum COACH_SIGN_IN:Lcn/mucang/sundial/android/tcp/upload/EventType;

.field public static final enum COACH_SIGN_OUT:Lcn/mucang/sundial/android/tcp/upload/EventType;

.field public static final enum COACH_TRAINING:Lcn/mucang/sundial/android/tcp/upload/EventType;

.field public static final enum PLATFORM_QUERY:Lcn/mucang/sundial/android/tcp/upload/EventType;

.field public static final enum STUDENT_SIGN_IN:Lcn/mucang/sundial/android/tcp/upload/EventType;

.field public static final enum STUDENT_SIGN_OUT:Lcn/mucang/sundial/android/tcp/upload/EventType;

.field public static final enum STUDENT_TRAINING:Lcn/mucang/sundial/android/tcp/upload/EventType;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/upload/EventType;

    const-string v1, "PLATFORM_QUERY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/mucang/sundial/android/tcp/upload/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/sundial/android/tcp/upload/EventType;->PLATFORM_QUERY:Lcn/mucang/sundial/android/tcp/upload/EventType;

    .line 2
    new-instance v1, Lcn/mucang/sundial/android/tcp/upload/EventType;

    const-string v3, "STUDENT_SIGN_IN"

    const/4 v4, 0x1

    const/16 v5, 0x11

    invoke-direct {v1, v3, v4, v5}, Lcn/mucang/sundial/android/tcp/upload/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_SIGN_IN:Lcn/mucang/sundial/android/tcp/upload/EventType;

    new-instance v3, Lcn/mucang/sundial/android/tcp/upload/EventType;

    const-string v5, "STUDENT_SIGN_OUT"

    const/4 v6, 0x2

    const/16 v7, 0x12

    invoke-direct {v3, v5, v6, v7}, Lcn/mucang/sundial/android/tcp/upload/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_SIGN_OUT:Lcn/mucang/sundial/android/tcp/upload/EventType;

    .line 3
    new-instance v5, Lcn/mucang/sundial/android/tcp/upload/EventType;

    const-string v7, "STUDENT_TRAINING"

    const/4 v8, 0x3

    const/16 v9, 0x13

    invoke-direct {v5, v7, v8, v9}, Lcn/mucang/sundial/android/tcp/upload/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_TRAINING:Lcn/mucang/sundial/android/tcp/upload/EventType;

    .line 4
    new-instance v7, Lcn/mucang/sundial/android/tcp/upload/EventType;

    const-string v9, "COACH_SIGN_IN"

    const/4 v10, 0x4

    const/16 v11, 0x14

    invoke-direct {v7, v9, v10, v11}, Lcn/mucang/sundial/android/tcp/upload/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/mucang/sundial/android/tcp/upload/EventType;->COACH_SIGN_IN:Lcn/mucang/sundial/android/tcp/upload/EventType;

    new-instance v9, Lcn/mucang/sundial/android/tcp/upload/EventType;

    const-string v11, "COACH_SIGN_OUT"

    const/4 v12, 0x5

    const/16 v13, 0x15

    invoke-direct {v9, v11, v12, v13}, Lcn/mucang/sundial/android/tcp/upload/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcn/mucang/sundial/android/tcp/upload/EventType;->COACH_SIGN_OUT:Lcn/mucang/sundial/android/tcp/upload/EventType;

    .line 5
    new-instance v11, Lcn/mucang/sundial/android/tcp/upload/EventType;

    const-string v13, "COACH_TRAINING"

    const/4 v14, 0x6

    const/16 v15, 0x16

    invoke-direct {v11, v13, v14, v15}, Lcn/mucang/sundial/android/tcp/upload/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcn/mucang/sundial/android/tcp/upload/EventType;->COACH_TRAINING:Lcn/mucang/sundial/android/tcp/upload/EventType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcn/mucang/sundial/android/tcp/upload/EventType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 6
    sput-object v13, Lcn/mucang/sundial/android/tcp/upload/EventType;->$VALUES:[Lcn/mucang/sundial/android/tcp/upload/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/sundial/android/tcp/upload/EventType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/sundial/android/tcp/upload/EventType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/sundial/android/tcp/upload/EventType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/sundial/android/tcp/upload/EventType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/tcp/upload/EventType;->$VALUES:[Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v0}, [Lcn/mucang/sundial/android/tcp/upload/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/sundial/android/tcp/upload/EventType;

    return-object v0
.end method


# virtual methods
.method public valueOf()I
    .locals 1

    .line 2
    iget v0, p0, Lcn/mucang/sundial/android/tcp/upload/EventType;->value:I

    return v0
.end method
