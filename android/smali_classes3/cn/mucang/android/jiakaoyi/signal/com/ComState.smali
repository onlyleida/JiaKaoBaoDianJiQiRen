.class public final enum Lcn/mucang/android/jiakaoyi/signal/com/ComState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/com/ComState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/com/ComState;

.field public static final enum AiUpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

.field public static final enum Authorising:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

.field public static final enum ErrorAuthorise:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

.field public static final enum ErrorCom:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

.field public static final enum ErrorComBroken:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

.field public static final enum ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

.field public static final enum ErrorSplit:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

.field public static final enum ErrorUpdateFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

.field public static final enum Initialing:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

.field public static final enum None:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

.field public static final enum ReInitialing:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

.field public static final enum UpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

.field public static final enum Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;


# instance fields
.field public final code:I

.field public final desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const-string v1, "None"

    const/4 v2, 0x0

    const-string v3, "\u4e0d\u53ef\u7528"

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->None:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const-string v3, "Initialing"

    const/4 v4, 0x1

    const-string v5, "\u521d\u59cb\u5316\u4e2d"

    invoke-direct {v1, v3, v4, v5, v4}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Initialing:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const-string v5, "ErrorInitial"

    const/4 v6, 0x2

    const-string v7, "\u521d\u59cb\u5316\u5931\u8d25"

    const/4 v8, -0x1

    invoke-direct {v3, v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const-string v7, "ReInitialing"

    const/4 v8, 0x3

    const-string v9, "\u91cd\u8fde\u4e2d"

    const/16 v10, 0xc

    invoke-direct {v5, v7, v8, v9, v10}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ReInitialing:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 5
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const-string v9, "Authorising"

    const/4 v11, 0x4

    const-string v12, "\u6388\u6743\u4e2d"

    const/16 v13, 0x14

    invoke-direct {v7, v9, v11, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Authorising:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 6
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const-string v12, "ErrorAuthorise"

    const/4 v13, 0x5

    const-string v14, "\u6388\u6743\u5931\u8d25"

    const/4 v15, -0x2

    invoke-direct {v9, v12, v13, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorAuthorise:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 7
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const-string v14, "Valid"

    const/4 v15, 0x6

    const-string v13, "\u53ef\u7528"

    const/16 v11, 0x1e

    invoke-direct {v12, v14, v15, v13, v11}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 8
    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const-string v13, "ErrorSplit"

    const/4 v14, 0x7

    const-string v15, "\u5206\u5305\u5931\u8d25"

    const/4 v8, -0x3

    invoke-direct {v11, v13, v14, v15, v8}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorSplit:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 9
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const-string v13, "ErrorComBroken"

    const/16 v15, 0x8

    const-string v14, "\u8fde\u63a5\u65ad\u5f00"

    const/4 v6, -0x5

    invoke-direct {v8, v13, v15, v14, v6}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorComBroken:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 10
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const-string v13, "ErrorCom"

    const/16 v14, 0x9

    const-string v15, "\u8fde\u63a5\u9519\u8bef"

    const/4 v4, -0x6

    invoke-direct {v6, v13, v14, v15, v4}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorCom:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 11
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const-string v13, "UpdatingFirmware"

    const/16 v15, 0xa

    const-string v14, "\u5347\u7ea7\u56fa\u4ef6"

    const/16 v2, 0x28

    invoke-direct {v4, v13, v15, v14, v2}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->UpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 12
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const-string v13, "AiUpdatingFirmware"

    const/16 v14, 0xb

    const-string v15, "Ai\u5347\u7ea7\u56fa\u4ef6"

    const/16 v10, 0x32

    invoke-direct {v2, v13, v14, v15, v10}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->AiUpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 13
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const-string v13, "ErrorUpdateFirmware"

    const-string v15, "\u56fa\u4ef6\u5347\u7ea7\u5931\u8d25"

    const/4 v14, -0x7

    move-object/from16 v16, v2

    const/16 v2, 0xc

    invoke-direct {v10, v13, v2, v15, v14}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorUpdateFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const/16 v2, 0xd

    new-array v2, v2, [Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const/4 v13, 0x0

    aput-object v0, v2, v13

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v11, v2, v0

    const/16 v0, 0x8

    aput-object v8, v2, v0

    const/16 v0, 0x9

    aput-object v6, v2, v0

    const/16 v0, 0xa

    aput-object v4, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v10, v2, v0

    .line 14
    sput-object v2, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->desc:Ljava/lang/String;

    .line 3
    iput p4, p0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/com/ComState;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/com/ComState;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/com/ComState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    return-object v0
.end method


# virtual methods
.method public isNormal()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->UpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->AiUpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Initialing:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ReInitialing:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Authorising:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public staticsNormal()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->isNormal()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->None:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
