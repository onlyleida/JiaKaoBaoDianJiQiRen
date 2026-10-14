.class public final enum Lcn/mucang/android/jiakaoyi/framework/consts/Language;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/framework/consts/Language;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/framework/consts/Language;

.field public static final enum CHINESE:Lcn/mucang/android/jiakaoyi/framework/consts/Language;

.field public static final enum ENGLISH:Lcn/mucang/android/jiakaoyi/framework/consts/Language;

.field public static final enum UYGUR:Lcn/mucang/android/jiakaoyi/framework/consts/Language;


# instance fields
.field public final desc:Ljava/lang/String;

.field public final lang:Ljava/lang/String;

.field public final serverCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    const-string v1, "CHINESE"

    const/4 v2, 0x0

    const-string v3, "zh"

    const-string v4, "\u6c49\u8bed"

    const-string v5, "zh"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/consts/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->CHINESE:Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    const-string v8, "ENGLISH"

    const/4 v9, 0x1

    const-string v10, "en"

    const-string v11, "\u82f1\u8bed"

    const-string v12, "en"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/framework/consts/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->ENGLISH:Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    const-string v14, "UYGUR"

    const/4 v15, 0x2

    const-string v16, "ug"

    const-string v17, "\u7ef4\u543e\u5c14\u8bed"

    const-string v18, "ug"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/framework/consts/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->UYGUR:Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    const/4 v2, 0x3

    new-array v2, v2, [Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 4
    sput-object v2, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->lang:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->desc:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->serverCode:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/consts/Language;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->values()[Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->lang:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->CHINESE:Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/consts/Language;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/framework/consts/Language;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/framework/consts/Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    return-object v0
.end method
