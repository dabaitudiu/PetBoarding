# FindPetCaring

1. ./search: 搜索页面 搜索前右侧随便显示，搜索后右侧显示结果 (可选项卡形式， 可table形式).
2. ./appointment: 预约界面

### 表说明：

**pet_infos_1000 等文件已经弃用！**

#### Owner Service：
```sql
create table owner_service (
	owner_id VARCHAR(9),
	species VARCHAR(6),
	years VARCHAR(4),
	house_type VARCHAR(24),
	price INT,
	date_start DATE,
	date_end DATE
);
```
- Initialize at **owner_service.sql**
- 映射关系之后要再好好改一下。。

#### Owner Info：
```sql
create table Owner_Personal_Info (
	owner_id VARCHAR(9),
	owner_name VARCHAR(50),
	owner_email VARCHAR(50),
	owner_gender VARCHAR(50),
	owner_intro TEXT,
	date_entered DATE,
	owner_phone VARCHAR(50),
	owner_img_url VARCHAR(50),
	owner_address VARCHAR(50),
	owner_states VARCHAR(50)
);
```
- Initialize at **Owner_Personal_Info.sql**
- 这里owner_id应该是primary key了吧 不过owner_info和owner_service谁foreign谁要考虑一下






1. Find all owners who are at least specialized in keeping '{}'. {} - pet name

2. Show top K results

3. Let customers define the variable 'resources' by choosing and combining variables from:
   [num(house_type), num(pet)_types, length(available_time), expense, etc.],
   Find owner that has best 'resources'

4. Define 'Pet Clubs':
    a. If the pet owners have same pet_type offerings.
    b. If they are in the same area
   Show all 'Pet Clubs'
   
5. 每个owner都应该有一个'Ratings List', rank by avg(Ratings), list all pet owners 
   that have ratings than avg(ratings)

6. 加admin page， 在UI上就实现增减操作

7. 在返回的Table上 每个column实现click就排序的操作

8. Debug Info 记得关闭

9. 自动弹框加入会员

10. 做成响应式，只包括手机和电脑

11. 标签做成可叉示例

12. 参考deliveroo： Pet Owners near NUS, 然后做成图片选项卡

13. Deliveroo Food种类做的不好，因为种类太多，看着费劲还记不住，两个思路：1. 大类，再细分小类 2. 添加一个即使搜索框

14. 主页：下载我们的app！
