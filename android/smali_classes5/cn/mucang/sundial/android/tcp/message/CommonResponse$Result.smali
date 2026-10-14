.class public final enum Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/message/CommonResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

.field public static final enum FAILURE:Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

.field public static final enum MESSAGE_ERROR:Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

.field public static final enum NOT_SUPPORTED:Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

.field public static final enum SUCCESS:Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;->SUCCESS:Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    .line 2
    new-instance v1, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    const-string v3, "FAILURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;->FAILURE:Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    .line 3
    new-instance v3, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    const-string v5, "MESSAGE_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;->MESSAGE_ERROR:Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    .line 4
    new-instance v5, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    const-string v7, "NOT_SUPPORTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;->NOT_SUPPORTED:Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;->$VALUES:[Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

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
    iput p3, p0, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;->value:I

    return-void
.end method

.method public static from(I)Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;->values()[Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;->value:I

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

    const-string v2, "\u975e\u6cd5\u7684Result\u503c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    return-object p0
.end method

.method public static values()[Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;->$VALUES:[Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    invoke-virtual {v0}, [Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    return-object v0
.end method
