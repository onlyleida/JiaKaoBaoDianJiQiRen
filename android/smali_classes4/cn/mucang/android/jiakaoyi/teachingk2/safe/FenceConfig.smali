.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

.field public static final enum FenceClose:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

.field public static final enum FenceOpenHide:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

.field public static final enum FenceOpenShow:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

.field public static final list:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;


# instance fields
.field public final index:I

.field public final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    const-string v1, "FenceOpenShow"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "\u5f00\u542f-\u663e\u793a"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->FenceOpenShow:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    const-string v4, "FenceOpenHide"

    const/4 v5, 0x2

    const-string v6, "\u5f00\u542f-\u9690\u85cf"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->FenceOpenHide:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    .line 3
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    const-string v6, "FenceClose"

    const/4 v7, 0x3

    const-string v8, "\u5173\u95ed"

    invoke-direct {v4, v6, v5, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->FenceClose:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    new-array v6, v7, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 4
    sput-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->list:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

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
    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->index:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->text:Ljava/lang/String;

    return-void
.end method

.method public static getCurSelectedPos(J)I
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->getFenceConfig(J)I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->list:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v1, v1, v0

    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->index:I

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public static getFenceConfig(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->getFenceKey(J)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->FenceOpenHide:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->index:I

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getFenceKey(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyFenceConfig_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isClose(J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->getFenceConfig(J)I

    move-result p0

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->FenceClose:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->index:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOpen(J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->getFenceConfig(J)I

    move-result p0

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->FenceOpenShow:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->index:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setFenceConfig(JI)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->getFenceKey(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    return-object v0
.end method
