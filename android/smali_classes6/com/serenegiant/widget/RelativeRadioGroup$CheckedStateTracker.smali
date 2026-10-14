.class Lcom/serenegiant/widget/RelativeRadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/RelativeRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/RelativeRadioGroup;


# direct methods
.method private constructor <init>(Lcom/serenegiant/widget/RelativeRadioGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/widget/RelativeRadioGroup$CheckedStateTracker;->this$0:Lcom/serenegiant/widget/RelativeRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/widget/RelativeRadioGroup;Lcom/serenegiant/widget/RelativeRadioGroup$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/RelativeRadioGroup$CheckedStateTracker;-><init>(Lcom/serenegiant/widget/RelativeRadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/serenegiant/widget/RelativeRadioGroup$CheckedStateTracker;->this$0:Lcom/serenegiant/widget/RelativeRadioGroup;

    invoke-static {p2}, Lcom/serenegiant/widget/RelativeRadioGroup;->access$300(Lcom/serenegiant/widget/RelativeRadioGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/serenegiant/widget/RelativeRadioGroup$CheckedStateTracker;->this$0:Lcom/serenegiant/widget/RelativeRadioGroup;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/serenegiant/widget/RelativeRadioGroup;->access$302(Lcom/serenegiant/widget/RelativeRadioGroup;Z)Z

    .line 3
    iget-object p2, p0, Lcom/serenegiant/widget/RelativeRadioGroup$CheckedStateTracker;->this$0:Lcom/serenegiant/widget/RelativeRadioGroup;

    invoke-static {p2}, Lcom/serenegiant/widget/RelativeRadioGroup;->access$400(Lcom/serenegiant/widget/RelativeRadioGroup;)I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    .line 4
    iget-object p2, p0, Lcom/serenegiant/widget/RelativeRadioGroup$CheckedStateTracker;->this$0:Lcom/serenegiant/widget/RelativeRadioGroup;

    invoke-static {p2}, Lcom/serenegiant/widget/RelativeRadioGroup;->access$400(Lcom/serenegiant/widget/RelativeRadioGroup;)I

    move-result v0

    invoke-static {p2, v0, v1}, Lcom/serenegiant/widget/RelativeRadioGroup;->access$500(Lcom/serenegiant/widget/RelativeRadioGroup;IZ)V

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/serenegiant/widget/RelativeRadioGroup$CheckedStateTracker;->this$0:Lcom/serenegiant/widget/RelativeRadioGroup;

    invoke-static {p2, v1}, Lcom/serenegiant/widget/RelativeRadioGroup;->access$302(Lcom/serenegiant/widget/RelativeRadioGroup;Z)Z

    .line 6
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    .line 7
    iget-object p2, p0, Lcom/serenegiant/widget/RelativeRadioGroup$CheckedStateTracker;->this$0:Lcom/serenegiant/widget/RelativeRadioGroup;

    invoke-static {p2, p1}, Lcom/serenegiant/widget/RelativeRadioGroup;->access$600(Lcom/serenegiant/widget/RelativeRadioGroup;I)V

    return-void
.end method
