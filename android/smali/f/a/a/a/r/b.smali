.class public final Lf/a/a/a/r/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/r/h;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\n\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\n\u001a\u00020\u0007H\u0016J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000cH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/core/storage/EncryptionStorage;",
        "Lcn/mucang/android/core/storage/Storage;",
        "storage",
        "encryption",
        "Lcn/mucang/android/core/storage/Encryption;",
        "(Lcn/mucang/android/core/storage/Storage;Lcn/mucang/android/core/storage/Encryption;)V",
        "clear",
        "",
        "get",
        "",
        "release",
        "save",
        "",
        "string",
        "setValueChangedListener",
        "l",
        "Lcn/mucang/android/core/storage/ValueChangedListener;",
        "valid",
        "core-lib_release"
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
.field private final a:Lf/a/a/a/r/h;

.field private final b:Lf/a/a/a/r/a;


# direct methods
.method public constructor <init>(Lf/a/a/a/r/h;Lf/a/a/a/r/a;)V
    .locals 1

    const-string v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryption"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/a/r/b;->a:Lf/a/a/a/r/h;

    .line 3
    iput-object p2, p0, Lf/a/a/a/r/b;->b:Lf/a/a/a/r/a;

    return-void
.end method

.method public synthetic constructor <init>(Lf/a/a/a/r/h;Lf/a/a/a/r/a;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 4
    new-instance p2, Lf/a/a/a/r/f;

    const-string p3, "__tnpn__"

    invoke-direct {p2, p3}, Lf/a/a/a/r/f;-><init>(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lf/a/a/a/r/b;-><init>(Lf/a/a/a/r/h;Lf/a/a/a/r/a;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/r/b;->a:Lf/a/a/a/r/h;

    invoke-interface {v0}, Lf/a/a/a/r/h;->a()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lf/a/a/a/r/b;->b:Lf/a/a/a/r/a;

    invoke-interface {v0, p1}, Lf/a/a/a/r/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lf/a/a/a/r/b;->a:Lf/a/a/a/r/h;

    invoke-interface {v0, p1}, Lf/a/a/a/r/h;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public get()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/a/r/b;->a:Lf/a/a/a/r/h;

    invoke-interface {v0}, Lf/a/a/a/r/h;->get()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lf/a/a/a/r/b;->b:Lf/a/a/a/r/a;

    invoke-interface {v1, v0}, Lf/a/a/a/r/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
