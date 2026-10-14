.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0012\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u00032\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\t\u0010\u001d\u001a\u00020\rH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\t\"\u0004\u0008\u0012\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalStandard2Item;",
        "",
        "isOn",
        "",
        "text",
        "",
        "checked",
        "(ZLjava/lang/String;Z)V",
        "getChecked",
        "()Z",
        "setChecked",
        "(Z)V",
        "extensionId",
        "",
        "getExtensionId",
        "()I",
        "setExtensionId",
        "(I)V",
        "setOn",
        "getText",
        "()Ljava/lang/String;",
        "setText",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(ZLjava/lang/String;Z)V
    .locals 1

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->a:Z

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->c:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->d:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->a:Z

    return v0
.end method

.method public final e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->c:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    instance-of v1, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 2
    :cond_1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;

    iget-object v2, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->a:Z

    iget-boolean v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->a:Z

    if-ne v2, v3, :cond_2

    iget-boolean p1, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->c:Z

    iget-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->c:Z

    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public final f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->d:I

    return-void
.end method

.method public final g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->a:Z

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->b:Ljava/lang/String;

    return-void
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->c:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStandard2Item(isOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", checked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
