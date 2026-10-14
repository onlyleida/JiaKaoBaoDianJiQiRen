.class public final enum Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpeakOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

.field public static final enum NO:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

.field public static final enum YES:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    const-string v1, "NO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;->NO:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    .line 2
    new-instance v1, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    const-string v3, "YES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;->YES:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;->$VALUES:[Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

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
    iput p3, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;->value:I

    return-void
.end method

.method static from(I)Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;->values()[Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u975e\u6cd5\u7684SpeakOption.value\u503c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    return-object p0
.end method

.method public static values()[Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;->$VALUES:[Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    invoke-virtual {v0}, [Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;->value:I

    return v0
.end method
