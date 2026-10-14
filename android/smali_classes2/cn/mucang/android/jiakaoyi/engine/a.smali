.class public final synthetic Lcn/mucang/android/jiakaoyi/engine/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/engine/c;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/engine/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/a;->a:Lcn/mucang/android/jiakaoyi/engine/c;

    return-void
.end method


# virtual methods
.method public final onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/a;->a:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/c;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method
