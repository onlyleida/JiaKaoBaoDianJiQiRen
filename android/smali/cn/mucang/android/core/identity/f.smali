.class public final synthetic Lcn/mucang/android/core/identity/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/identity/OaidProviderForInit;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/identity/OaidProviderForInit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/identity/f;->a:Lcn/mucang/android/core/identity/OaidProviderForInit;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/core/identity/f;->a:Lcn/mucang/android/core/identity/OaidProviderForInit;

    invoke-static {v0}, Lcn/mucang/android/core/identity/OaidProviderForInit;->a(Lcn/mucang/android/core/identity/OaidProviderForInit;)V

    return-void
.end method
