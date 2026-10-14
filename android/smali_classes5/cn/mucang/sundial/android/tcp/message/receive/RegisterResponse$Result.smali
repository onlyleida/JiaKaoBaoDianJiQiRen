.class public final enum Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

.field public static final enum DEVICE_NOT_FOUND:Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

.field public static final enum DEVICE_REGISTERED:Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

.field public static final enum SUCCESS:Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

.field public static final enum VEHICLE_NOT_FOUND:Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

.field public static final enum VEHICLE_REGISTERED:Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;


# instance fields
.field public final message:Ljava/lang/String;

.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const-string v3, "\u6210\u529f"

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;->SUCCESS:Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    .line 2
    new-instance v1, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    const-string v3, "VEHICLE_REGISTERED"

    const/4 v4, 0x1

    const-string v5, "\u8f66\u8f86\u5df2\u88ab\u6ce8\u518c"

    invoke-direct {v1, v3, v4, v4, v5}, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;->VEHICLE_REGISTERED:Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    .line 3
    new-instance v3, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    const-string v5, "VEHICLE_NOT_FOUND"

    const/4 v6, 0x2

    const-string v7, "\u6570\u636e\u5e93\u4e2d\u65e0\u8be5\u8f66\u8f86"

    invoke-direct {v3, v5, v6, v6, v7}, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;->VEHICLE_NOT_FOUND:Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    .line 4
    new-instance v5, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    const-string v7, "DEVICE_REGISTERED"

    const/4 v8, 0x3

    const-string v9, "\u7ec8\u7aef\u5df2\u88ab\u6ce8\u518c"

    invoke-direct {v5, v7, v8, v8, v9}, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;->DEVICE_REGISTERED:Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    .line 5
    new-instance v7, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    const-string v9, "DEVICE_NOT_FOUND"

    const/4 v10, 0x4

    const-string v11, "\u6570\u636e\u5e93\u4e2d\u65e0\u8be5\u7ec8\u7aef"

    invoke-direct {v7, v9, v10, v10, v11}, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;->DEVICE_NOT_FOUND:Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;->$VALUES:[Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;->value:I

    .line 3
    iput-object p4, p0, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;->message:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    return-object p0
.end method

.method public static values()[Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;->$VALUES:[Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    invoke-virtual {v0}, [Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    return-object v0
.end method
