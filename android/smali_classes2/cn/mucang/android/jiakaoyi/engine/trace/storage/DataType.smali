.class public final enum Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

.field public static final enum Behavior:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

.field public static final enum Car:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

.field public static final enum CarData:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

.field public static final enum Deduct:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

.field public static final enum Error:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

.field public static final enum Exam:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

.field public static final enum ExtraInfo:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

.field public static final enum Signal:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

.field public static final enum Site:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

.field public static final enum Step:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;


# instance fields
.field public final typeId:I

.field private final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    const-string v1, "Site"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "\u5730\u56fe"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Site:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    const-string v4, "Car"

    const/4 v5, 0x2

    const-string v6, "\u8f66\u8eab\u4f4d\u7f6e"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Car:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    .line 3
    new-instance v4, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    const-string v6, "Signal"

    const/4 v7, 0x3

    const-string v8, "\u4fe1\u53f7"

    invoke-direct {v4, v6, v5, v7, v8}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Signal:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    .line 4
    new-instance v6, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    const-string v8, "Step"

    const/4 v9, 0x4

    const-string v10, "\u6b65\u9aa4"

    invoke-direct {v6, v8, v7, v9, v10}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Step:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    .line 5
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    const-string v10, "Exam"

    const/4 v11, 0x5

    const-string v12, "\u7279\u6b8a\u6570\u636e"

    invoke-direct {v8, v10, v9, v11, v12}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Exam:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    .line 6
    new-instance v10, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    const-string v12, "Error"

    const/4 v13, 0x6

    const-string v14, "\u9519\u8bef"

    invoke-direct {v10, v12, v11, v13, v14}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Error:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    .line 7
    new-instance v12, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    const-string v14, "Deduct"

    const/4 v15, 0x7

    const-string v11, "\u6263\u5206"

    invoke-direct {v12, v14, v13, v15, v11}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Deduct:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    .line 8
    new-instance v11, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    const-string v14, "CarData"

    const/16 v13, 0xc

    const-string v9, "\u8f66\u8eab\u6570\u636e"

    invoke-direct {v11, v14, v15, v13, v9}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->CarData:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    .line 9
    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    const-string v13, "Behavior"

    const/16 v14, 0x8

    const/16 v15, 0xd

    const-string v7, "\u7ec3\u8f66\u884c\u4e3a"

    invoke-direct {v9, v13, v14, v15, v7}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Behavior:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    .line 10
    new-instance v7, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    const-string v13, "ExtraInfo"

    const/16 v15, 0x9

    const/16 v14, 0xa

    const-string v5, "\u5176\u4ed6\u4fe1\u606f"

    invoke-direct {v7, v13, v15, v14, v5}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->ExtraInfo:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    new-array v5, v14, [Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v12, v5, v0

    const/4 v0, 0x7

    aput-object v11, v5, v0

    const/16 v0, 0x8

    aput-object v9, v5, v0

    aput-object v7, v5, v15

    .line 11
    sput-object v5, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->$VALUES:[Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

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
    iput p3, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->$VALUES:[Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    return-object v0
.end method
