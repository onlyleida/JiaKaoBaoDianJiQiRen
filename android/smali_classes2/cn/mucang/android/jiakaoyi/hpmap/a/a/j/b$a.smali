.class Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/framework/h/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;I)I

    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
