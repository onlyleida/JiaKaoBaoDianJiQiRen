.class public final enum Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/framework/utils/JNet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

.field public static final enum DisConnect:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

.field public static final enum Good:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

.field public static final enum None:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

.field public static final enum Normal:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

.field public static final enum Poor:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;


# instance fields
.field public final desc:Ljava/lang/String;

.field public final state:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    const-string v1, "Good"

    const/4 v2, 0x0

    const/16 v3, 0x32

    const-string v4, "\u597d"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->Good:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    const-string v3, "Normal"

    const/4 v4, 0x1

    const/16 v5, 0x28

    const-string v6, "\u4e00\u822c"

    invoke-direct {v1, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->Normal:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    const-string v5, "Poor"

    const/4 v6, 0x2

    const/16 v7, 0x14

    const-string v8, "\u5ef6\u8fdf"

    invoke-direct {v3, v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->Poor:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    const-string v7, "DisConnect"

    const/4 v8, 0x3

    const-string v9, "\u672a\u8fde\u63a5"

    invoke-direct {v5, v7, v8, v2, v9}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->DisConnect:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    .line 5
    new-instance v7, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    const-string v9, "None"

    const/4 v10, 0x4

    const/4 v11, -0x1

    const-string v12, "\u6682\u65e0"

    invoke-direct {v7, v9, v10, v11, v12}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->None:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

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
    iput p3, p0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->state:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    return-object v0
.end method
