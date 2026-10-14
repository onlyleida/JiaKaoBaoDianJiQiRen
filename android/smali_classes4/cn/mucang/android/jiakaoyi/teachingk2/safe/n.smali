.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/safe/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/x/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

.field public final synthetic b:B


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/n;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    iput-byte p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/n;->b:B

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/n;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/n;->b:B

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$flameOut$1;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;B)[B

    move-result-object v0

    return-object v0
.end method
