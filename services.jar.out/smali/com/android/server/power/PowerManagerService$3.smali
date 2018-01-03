.class Lcom/android/server/power/PowerManagerService$3;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$lowPowerModeEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "val$lowPowerModeEnabled"    # Z

    .prologue
    .line 944
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean p2, p0, Lcom/android/server/power/PowerManagerService$3;->val$lowPowerModeEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 947
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 948
    const-string/jumbo v4, "mode"

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Z

    move-result v5

    .line 947
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 950
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 952
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get12(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 953
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 954
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get14(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    .line 953
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PowerManagerInternal$LowPowerModeListener;>;"
    monitor-exit v4

    .line 956
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 957
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManagerInternal$LowPowerModeListener;

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService$3;->val$lowPowerModeEnabled:Z

    invoke-interface {v3, v4}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->onLowPowerModeChanged(Z)V

    .line 956
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 952
    .end local v0    # "i":I
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PowerManagerInternal$LowPowerModeListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 959
    .restart local v0    # "i":I
    .restart local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PowerManagerInternal$LowPowerModeListener;>;"
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 960
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 961
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 963
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    .line 964
    const-string/jumbo v5, "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

    .line 963
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 964
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 965
    const-string/jumbo v6, "android.permission.DEVICE_POWER"

    .line 963
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 946
    return-void
.end method
