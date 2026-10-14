.class public final synthetic Lcn/mucang/android/core/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/utils/b;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcn/mucang/android/core/utils/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/core/utils/b;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/mucang/android/core/utils/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/MiscUtils;->k(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
