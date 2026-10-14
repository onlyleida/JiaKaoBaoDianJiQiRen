.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/safe/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/x/b;


# instance fields
.field public final synthetic a:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/p;->a:[I

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/p;->a:[I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$patchSetSafeCoefficient$1;->a([I)[B

    move-result-object v0

    return-object v0
.end method
