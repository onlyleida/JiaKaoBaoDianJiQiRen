.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/safe/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/x/b;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/m;->a:Z

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/m;->a:Z

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$1;->a(Z)[B

    move-result-object v0

    return-object v0
.end method
