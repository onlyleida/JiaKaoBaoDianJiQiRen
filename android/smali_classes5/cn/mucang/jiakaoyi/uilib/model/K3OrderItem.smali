.class public final Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;",
        "Ljava/io/Serializable;",
        "()V",
        "step",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "showInRoute",
        "",
        "(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V",
        "getShowInRoute",
        "()Z",
        "setShowInRoute",
        "(Z)V",
        "getStep",
        "()Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "setStep",
        "(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private showInRoute:Z

.field private step:Lcn/mucang/android/jiakaoyi/engine/model/Step;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ShangChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;ZILkotlin/jvm/internal/o;)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V
    .locals 1

    const-string v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->showInRoute:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;ZILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;Lcn/mucang/android/jiakaoyi/engine/model/Step;ZILjava/lang/Object;)Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->showInRoute:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->copy(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->showInRoute:Z

    return v0
.end method

.method public final copy(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;
    .locals 1

    const-string v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;

    invoke-direct {v0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v3, p1, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->showInRoute:Z

    iget-boolean p1, p1, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->showInRoute:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getShowInRoute()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->showInRoute:Z

    return v0
.end method

.method public final getStep()Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->showInRoute:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setShowInRoute(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->showInRoute:Z

    return-void
.end method

.method public final setStep(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "K3OrderItem(step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showInRoute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->showInRoute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
