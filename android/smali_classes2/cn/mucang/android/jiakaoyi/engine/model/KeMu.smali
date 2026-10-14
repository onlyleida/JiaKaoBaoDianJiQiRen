.class public final enum Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field public static final enum B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field public static final enum K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field public static final enum K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field public static final enum Moto:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;


# instance fields
.field public final dir:Ljava/lang/String;

.field public final max:I

.field public final min:I

.field public final name:Ljava/lang/String;

.field public final serverKeMu:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const-string v1, "K3"

    const/4 v2, 0x0

    const-string v3, "\u79d1\u76ee\u4e09"

    const-string v4, "k3"

    const/4 v5, 0x1

    const/16 v6, 0x64

    const-string v7, "3"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const-string v10, "K2"

    const/4 v11, 0x1

    const-string v12, "\u79d1\u76ee\u4e8c"

    const-string v13, "k2"

    const/16 v14, 0x65

    const/16 v15, 0xc8

    const-string v16, "2"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const-string v18, "B2"

    const/16 v19, 0x2

    const-string v20, "B2"

    const-string v21, "b2"

    const/16 v22, 0xc9

    const/16 v23, 0x12c

    const-string v24, "22"

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const-string v10, "Moto"

    const/4 v11, 0x3

    const-string v12, "\u6469\u6258\u8f66"

    const-string v13, "moto"

    const/16 v14, 0x12d

    const/16 v15, 0x190

    const-string v16, "32"

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->Moto:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const/4 v3, 0x4

    new-array v3, v3, [Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    .line 5
    sput-object v3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->$VALUES:[Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->name:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->dir:Ljava/lang/String;

    .line 4
    iput p5, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->min:I

    .line 5
    iput p6, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->max:I

    .line 6
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->serverKeMu:Ljava/lang/String;

    return-void
.end method

.method public static getKeMu(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->serverKeMu:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->serverKeMu:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->serverKeMu:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    .line 4
    :cond_2
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->Moto:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-object p0
.end method

.method public static getKeMuByStep(I)Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->min:I

    if-lt p0, v1, :cond_0

    iget v1, v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->max:I

    if-gt p0, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->min:I

    if-lt p0, v1, :cond_1

    iget v1, v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->max:I

    if-gt p0, v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->min:I

    if-lt p0, v1, :cond_2

    iget v1, v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->max:I

    if-gt p0, v1, :cond_2

    return-object v0

    .line 4
    :cond_2
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->Moto:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-object p0
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-object p0

    :cond_1
    const/16 v0, 0x16

    if-ne p0, v0, :cond_2

    .line 3
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->Moto:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->$VALUES:[Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-object v0
.end method
